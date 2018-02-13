if [[ $# -ne 3 ]]               #Checking validity of input
then
echo "Provide three arguments - 1.Search String 2.Input HTML 3.Output HTML"
exit 1
fi

HIGHLIGHT_COLOR=red;
BROWSER=firefox;

echo "Enter the color if you want. Enter n to use default red."
read color
if [[ $color != "n" ]]
then
HIGHLIGHT_COLOR=$color
fi

echo "Enter the browser if you want. Enter n to use default firefox."
read brow
if [[ $brow != "n" ]]
then
BROWSER=$brow
fi

sed "s.\<"$1"\>.<span style=\"color: $HIGHLIGHT_COLOR\">$1</span>.g" $2 > $3      #Putting a span tag around the string and setting the highlight color 

$BROWSER $3
