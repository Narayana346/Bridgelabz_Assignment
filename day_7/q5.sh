# Initialize an array to store numbers divisible by 11
duplicate_digit=()

# Loop through numbers from 0 to 100
for ((number = 1; number <= 100; number++)); do
  # Check if the number is divisible by 11
  if [ $((number % 11)) -eq 0 ]; then
    duplicate_digit+=("$number")
  fi
done

# Display the numbers divisible by 11
echo "Numbers divisible by 11 in the range 0-100:"
echo "${duplicate_digit[@]}"
