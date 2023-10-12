
sum=0
count=0

echo "Generating and calculating sum and average of 5 random 2-digit values:"

for ((i=1; i<=5; i++))
do
  # Generate a random two-digit value (between 10 and 99)
  random_value=$((RANDOM % 90 + 10))

  echo "Random Value $i: $random_value"

  # Add the random value to the sum
  sum=$((sum + random_value))
  count=$((count + 1))
done

# Calculate the average
average=$(echo "scale=2; $sum / $count" | bc)

echo "Sum of the 5 values: $sum"
echo "Average of the 5 values: $average"
