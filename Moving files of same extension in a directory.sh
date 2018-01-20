if [[ !(-d txtfiles) ]]			#txtfiles is the folder name. Check if the folder already exists
then
mkdir txtfiles
fi

if [[ !(-d docxfiles) ]]		#docxfiles is the folder name. Check if the folder already exists
then
mkdir docxfiles
fi

for i in *						#Check for every file in directory
do
       if [[ $i == *.txt ]] 	#If extension is .txt, move it to txtfiles directory
       then
	     mv $i /home/deepak/shellscripts/txtfiles
	   
	     elif [[ "$i" == *.docx ]]	#If extension is .docx, move it to docxfiles directory
	     then
	     mv "$i" /home/deepak/shellscripts/docxfiles
	   
	     fi
done
