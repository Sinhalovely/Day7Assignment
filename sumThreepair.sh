
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

# define flag variable to check if any three numbers add up to zero
found=false

# iterate over all pairs of numbers
for (( i=1; i<=3; i++ ))
do
  for (( j=i+1; j<=3; j++ ))
  do
    # calculate sum of the pair
    sum=$((${!i} + ${!j}))
    # iterate over all numbers again
    for (( k=1; k<=3; k++ ))
    do
      # check if the sum of the pair and the third number is zero
      if [ $(( $sum + ${!k} )) -eq 0 ]
      then
        found=true
        echo "${!i} + ${!j} + ${!k} = 0"
      fi
    done
  done
done

# if no such triplet exists
if [ $found = false ]
then
  echo "No such triplet found"
fi
