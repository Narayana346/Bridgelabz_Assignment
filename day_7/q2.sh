# Initialize an array to store random numbers
declare -a numbers

# Generate and store 10 random 3-digit numbers in the array
for ((i = 0; i < 10; i++)); do
  random_number=$((100 + RANDOM % 900))  # Generates a random 3-digit number
  numbers+=("$random_number")
done

# Display the generated numbers
echo "Generated numbers:"
echo "${numbers[@]}"

# Initialize variables for the second largest and second smallest
largest=${numbers[0]}
second_largest=${numbers[0]}
smallest=${numbers[0]}
second_smallest=${numbers[0]}

# Calculate the array length
array_length=${#numbers[@]}

# Loop through the array to find the second largest and second smallest
for ((i = 0; i < array_length; i++)); do
  if [ "${numbers[i]}" -gt "$largest" ]; then
    second_largest="$largest"
    largest="${numbers[i]}"
  elif [ "${numbers[i]}" -gt "$second_largest" ] && [ "${numbers[i]}" -ne "$largest" ]; then
    second_largest="${numbers[i]}"
  fi

  if [ "${numbers[i]}" -lt "$smallest" ]; then
    second_smallest="$smallest"
    smallest="${numbers[i]}"
  elif [ "${numbers[i]}" -lt "$second_smallest" ] && [ "${numbers[i]}" -ne "$smallest" ]; then
    second_smallest="${numbers[i]}"
  fi
done

# Display the second largest and second smallest numbers
echo "Second Largest: $second_largest"
echo "Second Smallest: $second_smallest"
