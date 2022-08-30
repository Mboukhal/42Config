#! /bin/bash

cd ~
ls -lhaR ~/ 2>&1 | grep "M " > tmp.clean 2>&1

cat tmp.clean | grep '[6-9][0-9]M ' > tmp2.clean 2> /dev/null
cat tmp.clean | grep '[0-9][0-5][0-9]M '  >> tmp2.clean 2> /dev/null
rm tmp.clean

input='tmp2.clean'
while read -r line
do
	x=`echo $line | awk {'print($9)'}`
	r=`find ~/ -name $x 2>/dev/null`
	rm "$r"
	echo -e "\033[31m$r Removed.\033[0m"
done < "$input"
echo -e "\033[32mExtra clean done\033[0m"
rm $input
cd -

