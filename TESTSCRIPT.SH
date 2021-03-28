#!bin\bash 
  
echo "Parameter I passed"  $0 $1 $2
echo $x "This is returned from ?"
FILE_NM=$1
SRC_DIR=$2
DEST_DIR=$3
echo "FILE_NM value is $FILE_NM"
 echo "SRC_DIR value is $SRC_DIR"
 echo "DEST_DIR value is  $DEST_DIR"
LKP_LIST_FILE=./List_of_Files.lkp
ls -lrt ${SRC_DIR} >> $LKP_LIST_FILE
for LKP_LIST_FILE in $SRC_DIR
do
echo "Found file $LKP_LIST_FILE" 
mv $SRC_DIR $DEST_DIR
#echo " file_moved_successful"
MV_CHECK=$?
echo " value $MV_CHECK"
echo " iam here before  IF"
if [ $MV_CHECK == 0 ] ; then
        grep -i $LKP_LIST_FILE  $DEST_DIR
        echo " FILE $LKP_LIST_FILE  is in $DEST_DIRT/$LKP_LIST_FILE"
        echo " iam here if"
        echo "FILE IS MOVED FROM  $SRC_DIR  to $DEST_DIR" 
else
        echo " iam here else "
echo "failed to move the file from $SRC_DIR  to $DEST_DIR....: error code: $MV_CHECK"
fi
done
~        `
