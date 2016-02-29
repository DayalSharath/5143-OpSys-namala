#Random Word printing
var=/usr/share/dict/words
var1=$(cat $var | wc -l)
var2=$(($RANDOM %$var1))
var3=$(sed ''$var2'q;d' $var)
echo 'Random word is: ' $var3
