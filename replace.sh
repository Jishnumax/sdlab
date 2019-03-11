echo "Enter the word to replace:"
read word1
echo "Enter the word to replace with:"
read word2
r=${word2^^}
echo $r
sed -i "s/$word1/$r/g" name.txt
cat name.txt
