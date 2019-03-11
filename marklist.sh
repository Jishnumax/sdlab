export IFS=","
summ=0;
arr=();
mean=0;
tmp=0;
tmp1=0;
cat mca.csv | while read adm name m1 m2 m3 m4 m5 m6 m7 m8; 
do 
echo "Adm no:$adm";
echo "Name:$name";
echo "M1:$m1 M2:$m2 M3:$m3 M4:$m4 M5:$m5 M6:$m6 M7:$m7"; 
summ=`expr $m1 + $m2 + $m3 + $m4 + $m5 + $m6 + $m7`;
sum1=$((summ+sum1));
mean=`expr $summ / 7`;
echo "Total:$summ";
echo "Mean:$mean";
done
echo "Total sum:$sum1";
cut -d ',' -f 3-9 mca.csv > mca_output.csv
while read p;do
	tmp=$((($p-$mean)*($p-$mean)));
	tmp1=$tmp+$tmp1;
	tmp=0;
done < mca_output.csv
var=$((tmp1/28));
echo "Variance=$var";
