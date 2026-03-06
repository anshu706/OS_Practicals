
sum=0

echo "Enter numbers:"
read nums

for num in $nums
do
  while [ $num -gt 0 ]
  do
    digit=$((num % 10))
    sum=$((sum + digit))
    num=$((num / 10))
  done
done

echo "Sum of digits = $sum"
