#!/bin/bash
echo 'hello!Lets extract files as you wish'
var=$(ls *.dff) #设置全局变量,需要修改的批量文件后缀筛选条件，以后可以扩充为其他条件，例如文件名包含了特殊字符、文件前缀等等，以及绝对目录、相对目录的内容
echo "Pipe method"
echo "$var" | while read line # 使用while循环比for循环好在可以直接读取一行而不会像for循环一样碰到空格都会换行，结果如12行以下 
do
   echo $line #输出哪一行
   dsf2flac -i "$line" #只是把''修改成了""就可以了，这是一块shell脚本的盲点
done
exit 0
#07
#-
#Sigmund
#Groven
#&
#Iver
#Kleive
#-
#Vektervers.dff
#07 - Sigmund Groven & Iver Kleive - Vektervers.dff