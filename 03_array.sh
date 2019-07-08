#! /bin/sh
array=(A B "C" D 1 2 3)
for i in ${array[*]};do
	echo $i
done
echo ${array[@]}

new_array[0]=1
new_array[1]=2
echo ${new_array[*]}
