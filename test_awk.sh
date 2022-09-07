
for i in {0..2};do
	awk -v var=$i '{print $var}' 2.txt
done
