read -p "Enter file name:" filename
read -p "Enter staring pos:" start
start1=$((start+1))
read -p "Enter ending pos:" end
end1=$((end-1))
sed -n "$start1,$end1 p" $filename
