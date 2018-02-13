#Input Format - ./filename.sh current_extension new_extension

for i in *              #Iterate through all files
do
	if [[ $i == *.$1 ]]   #Check files with extension same as first input
	then
		var1=`echo $i | awk -F "." '{ print $1 }'`      #Extract name of the files
		var2=`echo $var1"."$2`                          #Append new extension to the end of the file name
		mv $i $var2                                     #Rename it
		
	fi
done
