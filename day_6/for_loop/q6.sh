# Function to compute the prime factors of a number
compute_prime_factors() {
  local n="$1"
  local i=2

  while [ $i -le $n ]; do
    if [ $((n % i)) -eq 0 ]; then
      echo "$i"
      n=$((n / i))
    else
      ((i++))
    fi
  done
}

# Read a number from the user
read -p "Enter a number (N) to compute its prime factors: " number

# Check if the input is a positive integer
if ! [[ "$number" =~ ^[1-9][0-9]*$ ]]; then
  echo "Please provide a positive integer."
  exit 1
fi

echo "Prime factors of $number:"
compute_prime_factors "$number"
