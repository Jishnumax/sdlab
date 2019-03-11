echo "Enter the multiplication table for:"
read n
for j in {1..10}
do
echo $n*$j=$[$n*$j]
done
