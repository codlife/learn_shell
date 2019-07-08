#! /bin/sh
# if else
:<<!
if condition
then 
	command1
	command2
	command3
fi
!
if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true";fi

:<<!
if else-if else
if condition1
then
	command1
elif condition2
then 
	command2
else 
	commandN
fi
!
a=10
b=20
if [ $a == $b ]
then
	echo " a 等于 b"
elif [ $a -gt $b ]
then
	echo "a gt b"
elif [ $a -lt $b ]
then 
	echo "a lt b"
else 
	echo "没有符合条件"
fi

# for
# for var in item1 item2 itemN; do command1;command2... done;
for loop in 1 2 3 4 5
do 
	echo "the value is: $loop"
done


int=1
while(( $int <= 5))
do
	echo ${int}
	let "int++"
done

#while循环读入键盘信息
echo "按下 <CTRL-D>退出"
echo -n '请输入你最喜欢的网站名'
:<<!
while read FILM
do
	echo "是的! ${FILM}是一个好网站"
done
!

# for循环中可以不用$进行变量调用
for(( i=1 ; i<=5; i++ ));do
	echo "这个是第 $i 次调用"
done;

