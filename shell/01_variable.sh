#! /usr/bin
# 变量只能用数字、字母、下划线首字母不能是数字
# 变量和等号之间不能有空格
# your_name = "wjf"
your_name="wjf"
echo $your_name
for file in `ls .`
do 
echo $file;
done

for file in $(ls .)
do 
echo $file;
done

#使用变量，变量名前加美元符号，使用花括号进行标识是一个好习惯
your_name="jianfei"
echo $your_name
echo ${your_name}

#只读变量，readonly修饰
myUrl="http://www.google.com"
readonly myUrl
#myUrl="http://baidu.com"

#删除变量 unset,unset不能删除只读变量

#变量类型，三种：局部变量、环境变量、shell变量

#shell字符串
#单引号中不能有变量，双引号中可以有变量
#双引号中可以有转移字符
str='this is a string'
echo ${str}
str="this is a string \"${myUrl}\""
echo ${str}

#获取字符串长度
string="abcd"
#下面的形式有误
#v=#string
#echo ${v}
echo ${#string}

#提取子字符串,提取从第二个字符开始，后面的四个字符
string="google is a great company"
echo ${string:1:4}

#查找子字符串i和o的位置，从1开始
#作为一个命令，需要反引号
string="google is a great site"
echo `expr index "${string}" io`

#shell数组
array_name=(1 2 3 4)
#读取方法 ${数组名[index]}
echo ${array_name[0]}
#使用@可以获取所有元素
echo ${array_name[@]}
echo ${array_name[*]}

#获取数组长度 和获取字符串长度类似
echo ${#array_name[@]}
#获取某一个元素的长度
echo ${#array_name[0]}

#演示多行注释
:<<!
this is mnulti line 注释
!



