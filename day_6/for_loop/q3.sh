read -p "Enter a number: " number

# Check if the input is a positive integer
if ! [[ "$number" =~ ^[1-9][0-9]*$ ]]; then
  echo "Please provide a positive integer."
  exit 1
fi

# Function to check if a number is prime
is_prime() {
  local n="$1"
  if [ "$n" -le 1 ]; then
    echo "Not prime"
    return
  fi

  for ((i = 2; i * i <= n; i++)); do
    if [ "$((n % i))" -eq 0 ]; then
      echo "Not prime"
      return
    fi
  done

  echo "Prime"
}

result=$(is_prime "$number")
echo "$number is $result"
