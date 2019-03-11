#read -p "Enter file name:" f1
f1="testfile1.txt"
alfacount=0
digicount=0
spcount=0
file="testfile1.txt"
alfacount=0
digicount=0
spcount=0
while read p; do
	for (( i=0;i<
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
