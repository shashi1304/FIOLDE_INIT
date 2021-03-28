#!bin\bash

PATH_LIST_FILE=./test.txt  
for file in $PATH_LIST_FILE
do
        grep -wi "linux" $file
echo "finding text"
done



