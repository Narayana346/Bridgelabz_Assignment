# Function to check if a number is prime
is_prime() {
  local num="$1"

  if [ "$num" -le 1 ]; then
    return 1  # Not prime
  fi

  for ((i = 2; i * i <= num; i++)); do
    if [ "$((num % i))" -eq 0 ]; then
      return 1  # Not prime
    fi
  done

  return 0  # Prime
}

# Function to find and store prime factors of a number in an array
find_prime_factors() {
  local num="$1"
  local factors=()
  local i=2

  while [ "$i" -le "$num" ]; do
    if [ "$((num % i))" -eq 0 ] && is_prime "$i"; then
      factors+=("$i")
      num=$((num / i))
    else
      ((i++))
    fi
  done

  echo "${factors[@]}"
}

# Prompt the user to enter a number
read -p "Enter a number (n): " number

# Check if the input is a positive integer
if ! [[ "$number" =~ ^[1-9][0-9]*$ ]]; then
  echo "Please provide a positive integer."
  exit 1
fi

# Call the function to find and store prime factors
prime_factors=($(find_prime_factors "$number"))

# Display the prime factors
echo "Prime factors of $number: ${prime_factors[@]}"
