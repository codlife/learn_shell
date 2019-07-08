#! /usr/bin
#输入输出重定向
:<<!
一般情况下：每个Unix/Linux 明明都会打开三个文件
标准输入文件（stdin）： stdin的文件描述符为0，Unix默认从stdin读取数据
标准输出文件（stdout）: stdout的文件描述符为1，Unix默认从stdout输出数据
标准错错误文件（stderr）: stderr的文件描述符为2，Unix默认向stderr流中写入错误信息

n >& m  将输出m和n合并
n <& m  将输入m和n合并
<< tag  将开始标记tag和结束标记tag之间的内容作为输入
!
cat << !
欢迎来到
菜鸟教程
www.google.com
!

#/dev/null 文件
#如果希望执行某个命令，但是又不希望屏幕上输出结果，那么可以将输出重定向到/dev/null文件
# command > /dev/null 2>&1
