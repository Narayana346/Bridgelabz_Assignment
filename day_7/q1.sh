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

# Loop through the array to find the second largest and second smallest
for number in "${numbers[@]}"; do
  if [ "$number" -gt "$largest" ]; then
    second_largest="$largest"
    largest="$number"
  elif [ "$number" -gt "$second_largest" ] && [ "$number" -ne "$largest" ]; then
    second_largest="$number"
  fi

  if [ "$number" -lt "$smallest" ]; then
    second_smallest="$smallest"
    smallest="$number"
  elif [ "$number" -lt "$second_smallest" ] && [ "$number" -ne "$smallest" ]; then
    second_smallest="$number"
  fi
done

# Display the second largest and second smallest numbers
echo "Second Largest: $second_largest"
echo "Second Smallest: $second_smallest"
