#!/bin/bash



#使用说明，先安装pandoc。
#sudo pacman -S pandoc
#sudo chmod 777 ./mmake.sh

#https://www.jianshu.com/p/4721ddd27027
#将Markdown文件生成目录，生成完毕后要自行校验！默认生成三级目录。
#--toc-depth=4：表示将文档生成四级目录
echo 正在为Markdown文件生成目录，生成完毕后请自行校验！
cd ..
#该命令会覆盖pandoc-test/README-max.md文件
cp README-max.md pandoc-test/
cd pandoc-test
pandoc -s --toc --toc-depth=4 README-max.md -o README-max-$(date +%Y年%m月%d日%H时%I分%S秒).md

