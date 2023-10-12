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

# Function to get the palindrome of a number
get_palindrome() {
  local num="$1"
  local reversed=0
  local original="$num"

  while [ "$num" -gt 0 ]; do
    remainder=$((num % 10))
    reversed=$((reversed * 10 + remainder))
    num=$((num / 10))
  done

  echo "$reversed"
}

# Prompt the user to enter a number
read -p "Enter a number: " number

# Check if the input is a positive integer
if ! [[ "$number" =~ ^[1-9][0-9]*$ ]]; then
  echo "Please provide a positive integer."
  exit 1
fi

if is_prime "$number"; then
  echo "$number is a prime number."
  palindrome=$(get_palindrome "$number")

  if is_prime "$palindrome"; then
    echo "The palindrome of $number, which is $palindrome, is also prime."
  else
    echo "The palindrome of $number, which is $palindrome, is not prime."
  fi
else
  echo "$number is not a prime number."
fi
