#! /bin/sh
:<<!
shell中test用于检测某个条件是否成立，他可以进行数值、字符和文件三方面的测试。
!

# 数值测试 -eq -ne -gt -ge -lt -le
num1=100
num2=100
if test ${num1} -eq ${num2}
then
	echo "两个数相等"
else
	echo "两个数不相等"
fi

#使用[]执行基本的算术运算，如
a=5
b=6
result=$[a+b]
echo "result 为：$result"

#字符串测试
:<<!
= 等于为真
!= 不等于为真
-z 字符串 字符串的长度为零则为真
-n 字符串 字符串的缠绕高度不为0则为真

!
num1="run1"
numr="run2"
if test ${num1} = ${num2}
then 
	echo "相等"
else 
	echo "不相等"
fi

