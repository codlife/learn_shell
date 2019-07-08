#! /bin/sh
:<<!
[ function ] funname [()]
{
	acction;
	[return int;]
}
1可以带function 进行定义，也可以直接使用fun()进行定义，不带任何参数
2参数返回，可以显示的加return 返回，如果不加，那么返回最后一条命令结果

!
demoFun(){
	echo "hi this is a first shell function"
}
demoFun
a=1
b=2
echo $(($a + $b))
