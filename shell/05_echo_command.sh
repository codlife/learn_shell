#! /bin/sh

echo "It is a test"
echo It is a test
echo "\"It is a test\""
read name
echo "${name} It is a test"

# 单引号： 不支持变量  不能用转义符 不能用文本格式符：如换行符、制表符

# 双引号 都可以
