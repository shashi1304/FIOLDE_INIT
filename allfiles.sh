#!bin\bash 
  
echo "Parameter I passed"  $0 $1 $2
echo $x "This is returned from ?"

SRC_DIR=$1
DEST_DIR=$2

for file in $(ls $SRC_DIR)
do
	echo "file name  $file "
	mv $SRC_DIR/$file $DEST_DIR
done
