# Function to check if a number is prime
is_prime() {
  local n="$1"
  if [ "$n" -le 1 ]; then
    return 1  # Not prime
  fi

  for ((i = 2; i * i <= n; i++)); do
    if [ "$((n % i))" -eq 0 ]; then
      return 1  # Not prime
    fi
  done

  return 0  # Prime
}

# Read the range of numbers from the user
read -p "Enter the starting number of the range: " start
read -p "Enter the ending number of the range: " end

# Validate that both inputs are positive integers and that the start is less than or equal to the end
if ! [[ "$start" =~ ^[1-9][0-9]*$ && "$end" =~ ^[1-9][0-9]* && "$start" -le "$end" ]]; then
  echo "Invalid input. Please provide valid positive integers for the range."
  exit 1
fi

echo "Prime numbers in the range from $start to $end:"

# Iterate through the range and print prime numbers
for ((num = start; num <= end; num++)); do
  if is_prime "$num"; then
    echo "$num"
  fi
done
