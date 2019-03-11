if cmp -s "testfile1.txt" "testfile2.txt"
then
	file="testfile1.txt"
	while IFS= read -r line
	do
		echo $line | rev
	done <"$file"
else
	tr [a-z] [A-Z] < "testfile2.txt"
fi

