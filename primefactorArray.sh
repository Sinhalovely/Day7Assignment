read -p"Eneter a number: " n
declare -a factors

for ((i=2; i<=$n; i++))
do
 while (( $n%$i == 0 ))
 do
  factors+=($i)
  n=$(($n/$i))
 done
done

if (( $n > 2 )); then
    factors+=($n)
fi
echo "Prime factors of $n : ${factors[@]}"
