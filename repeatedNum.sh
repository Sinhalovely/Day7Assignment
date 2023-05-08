repeated_digits=()
for (( i=0; i<=100; i++ )); do
    n="$i"
    sum=0
    while [[ $n -gt 0 ]];
    do
      sum=$(($sum*10+$n%10))
      n=$(($n/10))
    done
   if [[ $sum == $i && $i -gt 10 ]];
   then
     repeated_digits+=("$i")
  fi
done

echo "Repeated digits: ${repeated_digits[@]}"
