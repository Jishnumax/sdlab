read -p "Enter a number " n
f=1
if [ $n -lt 1 ]
then
echo 1
else
for((i=1;i<=$n;i++))
do
f=$((f*i))
done
fi
echo $f
