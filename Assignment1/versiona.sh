#Printing filename with date on front
varfile=$1
if [ -e $varfile ]
then
  varm=$(date +"%Y-%m-%d")_"$1"
  mv "$1" "$varm"
else 
  var2=$(date +"%Y-%m-%d")_"$1"
  touch "$var2"
fi
echo 'File Created/Modified is: ' $var2
