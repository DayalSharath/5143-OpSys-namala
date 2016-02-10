#Printing filename with date on front
fullfilename=$(basename "$1")
fileext="${fullfilename##*.}"
filename="${fullfilename%.*}"
if [ -e $fullfilename ]
then
  varm=$filename'_'$(date +"%Y-%m-%d").$fileext
  mv "$1" "$varm"
else 
  var2=$filename'_'$(date +"%Y-%m-%d").$fileext
  touch "$var2"
fi
echo 'File created/Modified is:' $var2
