read -p "Enter file name:" filename
read -p "Enter staring pos:" start
read -p "Enter ending pos:" end
sed -n "$start,$end p" $filename
