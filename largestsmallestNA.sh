for ((i=1; i<=10; i++))
do
  num[$i]=$((RANDOM%100+900))
done
echo "${num[@]}"

largest=${num[0]}
sec_largest=${num[0]}

for i in ${num[@]}
do
 if [[ $i -gt $largest ]];
 then
    sec_largest=$largest
    largest=$i
 elif [[ $i -gt $sec_largest &&  $i -ne $largest ]]
 then
    sec_largest=$i
 fi
done
echo "Largest:$largest Second_largest:$sec_largest"

smallest=9999999
sec_smallest=9999999

for i in ${num[@]}
do
 if [[ $i -lt $smallest ]];
 then
    sec_smallest=$smallest
    smallest=$i
 elif [[ $i -lt $sec_smallest &&  $i -ne $smallest ]]
 then
    sec_smallest=$i
 fi
done
echo "Smallest:$smallest Second_smallest:$sec_smallest"
