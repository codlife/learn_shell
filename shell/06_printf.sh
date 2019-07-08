#! /bin/sh
:<<!
printf 命令模仿c程序库中的printf()程序
printf 有 POSIX标准所定义，使用printf的脚本比echo移植性好
不会像echo自动添加换行符、我们可以手动添加\n
printf fotmat-string [argu]
!
echo "Hello, Shell"
printf "hello, Shell\n"

printf "%d %s\n" 1 "abc"

# %d %s %c %f

