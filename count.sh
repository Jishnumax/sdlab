echo "Enter the Filename?"
read a
space=0
spec=0
num=0
cap=0
smal=0
while read -n1 c; do
if [[ $c = *[abcdefghijklmnopqrstuvwxyz]* ]]
then
smal=$((cap+1))
elif [[ $c = *[ABCDEFGHIJKLMNOPQRSTUVWXYZ]* ]] 
then
cap=$((smal+1))
elif [[ $c = [0-9] ]]
then
num=$((num+1))
elif [[ $c = *['!'@#\$%^\&*()_+]* ]]
then
spec=$((spec+1))
elif [[ "$c" = '\012' ]]
then
line=$((line+1))
else
space=$((space+1))
fi
done < $a
all=$((space+spc+alph+num))
echo " Number of Total Characters=$all"
echo " Number of Words=$((space-1))"
echo " Capital Characters =$cap"
echo " Small Characters =$smal"
echo " Numbers =$num"
echo " Special Characters =$spec"
echo " Number of lines" 
< "$a" LC_ALL=C tr -cd '\n' | grep -c '^'



  


