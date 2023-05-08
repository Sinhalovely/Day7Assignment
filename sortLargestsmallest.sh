for ((i=1; i<=10; i++))
do
  num[$i]=$((RANDOM%100+900))
done
echo "Array:${num[@]}"

sort_num=($(for i in ${num[@]}; do echo $i; done | sort))

echo "$Sorted array:${sort_num[@]}"
sec_largest=${sort_num[-2]}
sec_smallest=${sort_num[1]}

echo  "Sec_largest:$sec_largest Sec_smallest:$sec_smallest"

