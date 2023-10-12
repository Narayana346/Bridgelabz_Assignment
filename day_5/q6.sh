
min=999
max=100

echo "Generating 5 random 3-digit values and finding the minimum and maximum:"

for ((i=1; i<=5; i++))
do
  # Generate a random 3-digit value between 100 and 999
  random_value=$((RANDOM % 900 + 100))

  echo "Random Value $i: $random_value"

  # Check and update minimum and maximum values
  if [ "$random_value" -lt "$min" ]; then
    min=$random_value
  fi

  if [ "$random_value" -gt "$max" ]; then
    max=$random_value
  fi
done

echo "Minimum value: $min"
echo "Maximum value: $max"
