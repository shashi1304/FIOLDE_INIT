#!bin\bash 
  
echo "Parameter I passed"  $0 $1 $2

x=$?
DATE_TODAY_YYYYMMDD=`date +'%y%m%d'`
echo " today date :  ${date}"  
echo $x "This is returned from ?"
SRC_DIR=$1
DEST_DIR=$2
LKP_LIST_FILE=./List_of_Files.lkp

#List of Files in Source Directory
if [ -e $LKP_LIST_FILE $date  ]; then
        rm $LKP_LIST_FILE
echo " I am in if"
fi


ls ${SRC_DIR} >> $LKP_LIST_FILE
#Create a list

for line in `cat $LKP_LIST_FILE`;
do
         echo "I am here at $line "
done

PATH_LIST_FILE=./devo5/*.txt
for file in $PATH_LIST_FILE
do
	echo " IAM IN GREP " $file
	grep -i "linux" $file 

#
#     awk '{ print $1}' $file
done
#Create a Loop for each file
#for file in $1;
#do
#       mv $file $2
#       y=$?
#echo $y "This is test for failure ?"
#done 

