echo $1
echo $2

if [ $# -lt 2 ] 
then
echo Invalid
else
echo $(($1+$2))
fi
