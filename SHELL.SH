#!bin\bash 
  
echo "Parameter I passed"  $0 $1 $2

echo $x "This is returned from ?"
FILE_NM=$1
SRC_DIR=$2
DEST_DIR=$3
DATE=`date +'%y%m%d'`
echo "FILE_NM value is $FILE_NM"
echo "SRC_DIR value is $SRC_DIR"
echo "DEST_DIR value is  $DEST_DIR"

if [ -e $SRC_DIR/$FILE_NM ]; then
	echo "$SRC_DIR/$FILE_NM found"
else
	echo "$SRC_DIR/$FILE_NM not found"
fi

echo "Found file $LKP_LIST_FILE" 
mv $SRC_DIR/$FILE_NM  $DEST_DIR
MV_CHECK=$?

echo " value $MV_CHECK"
echo " iam here before  IF"
if [ $MV_CHECK == 0 ] ; then
	echo " iam here if"
	echo "FILE IS MOVED FROM  $SRC_DIR  to $DEST_DIR"
        ls -lrt $DEST_DIR/$FILE_NM	
else 
	echo " iam here else "
echo "failed to move the file from $SRC_DIR  to $DEST_DIR....: error code: $MV_CHECK"
       ls -lrt
       ls -lrt $DEST_DIR/$FILE_NM
fi

