#!bin\bash
for file in /root/folder3/*.txt;
do
	mv $file -r /root/folder1/
done

