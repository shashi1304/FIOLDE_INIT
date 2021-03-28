#!/bin/bash 

echo "Parameter I passed"  $0 $1 $2

DATE_TODAY_YYYYMMDD=$(date +'%y%m%d')

echo "today date : ${DATE_TODAY_YYYYMMDD} " 

FILE_NM=$1
SRC_DIR=$2
DEST_DIR=$32
LKP_LIST_FILE=./List_of_Files.lkp

#List of Files in Source Directory
if [ -e $LKP_LIST_FILE $date  ]; then
        rm $LKP_LIST_FILE
#echo " I am in if"
fi


ls ${SRC_DIR} >> $LKP_LIST_FILEt


for line in`cat $LKP_LIST_FILE`;
do
#        echo "I am here at $line "
done

PATH_LIST_FILE=./dev5/*.txt
 
#DEST_FOLDER=./DEVO6/
for file in $PATH_LIST_FILE
do
echo " iam in file " $file

#	grep -i "linux" $file

done
 

