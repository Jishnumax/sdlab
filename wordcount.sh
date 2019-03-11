read -p "Enter file name:" f1
count=0
for var in `cat $f1`
do
    count=`echo $count+1 | bc`
done
echo Words: $count

l=`grep -c "." $f1`
echo Lines: $l

charcount=`grep -o . $f1 | grep -c '^'`
echo Characters: $charcount

: ' file="testfile1.txt"
alfacount=0
digicount=0
spcount=0
`cat $f1`
while read -n 1 c
do
	if [ $c =~ [a-zA-Z] ]
	then
		alfacount=`echo $alfacount+1 | bc`
	else if [ $c =~ [0-9] ]
	then
		digicount=`echo $digicount+1 | bc`
	else
		spcount=`echo $spcount+1 | bc`
	fi
done <"$f1"'
		
	
