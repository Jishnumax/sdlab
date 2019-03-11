while [ $ch="y" ]
do
	echo -e "1.Addtion \n2.Difference \n3.Product \n4.Quotient \n5.Mod"
	read -p "Enter option:" o
	read -p "Enter two numbers:" x y
	case "$o" in
		1) echo "Sum="`expr $x + $y`
		;;
		2) echo "Difference="`expr $x - $y`
		;;
		3) echo "Product="`expr $x \* $y`
		;;
		4) echo "Quotient="`expr $x / $y`
		;;
		5) echo "Mod="`expr $x % $y`
		;;
	esac
	read -p "Do you want to continue?(y/n)" ch
	if [ $ch="n" ]
	then
		exit
	fi
done


