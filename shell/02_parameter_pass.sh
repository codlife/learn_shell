#! /bin/sh
a=360+70+70+50+50
echo ${a}
echo $!
echo $$
echo "--\$* 演示---"
for i in "$*";do
    echo $i
done

echo "--\$@ 演示---"
for i in "$@"; do
	    
	echo $i
done
