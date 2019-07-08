#! /usr/bin
:<<!
运算符种类：
算术运算符
关系运算符
布尔运算符
字符串运算符
文件测试运算符
!

#原声的bash不支持简单的数学运算，但是可以通过
#awk和expr进行实现，expr是一款表达式计算工具
#注意：+ 号前后必须有空格，然而变量定义却又不能有空格
val=`expr 96 + 116 + 109 + 68 + 57 + 47 + 44`
echo "两数之和为：${val}"

#算术运算符
a=10
b=20
val=`expr $a + $b`
echo "a + b : ${val}"

val=`expr $a - $b`
echo "a - b : ${val}"

val=`expr $a \* $b`
echo "a * b : ${val}"

if [ $a == $b ]
then
	echo "a == b"
fi
if [ $a != $b ]
then
	echo "a != b"
fi 


#关系运算符 支支持数字，不支持字符串，除非字符串的值是数字
#-eq -ne -gt -lt -ge -le
if [ $a == $b ]
then
	echo "$a -eq $b : a 等于 b"
else
	echo "$a -eq $b : a 不等于b"
fi

#逻辑运算符
# && || 使用需要[]
if [[ $a -ne $b && $a -lt $b ]]
then 
	echo "true"
else 
	echo "false"
fi

#字符串运算符
#a : "abc" b : "efg"
# -z 检测字符串长度是否为0,为0返回true
# -n 检测字符串长度是否为0，不为0返回true
# $ 检测字符串是否为空
a="abc"
b="efg"
if [ $a == $b ]
then 
	echo "$a == $b : a equals b"
else
	echo "$a == $b : a not equals b"
fi

if [ -z $a ]
then
	echo "${a}长度为0"
else 
	echo "${a}长度为 ${#a}"
fi


#文件操作运算符
#文件操作符检测Unix文件的各种属性
file=./04_operator.sh
if [ -r $file ]
then 
	echo "文件可读"
else 
	echo "文件不可读"
fi
if [ -w $file ]
then 	
	echo "文件可写"
else
	echo "文件不可写"
fi

