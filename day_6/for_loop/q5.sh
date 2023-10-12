# Function to calculate the factorial of a number
calculate_factorial() {
  local num="$1"
  local factorial=1

  for ((i = 1; i <= num; i++)); do
    factorial=$((factorial * i))
  done

  echo "$factorial"
}

# Read a number from the user
read -p "Enter a number to calculate its factorial: " number

# Check if the input is a non-negative integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
  echo "Please provide a non-negative integer."
  exit 1
fi

# Calculate and print the factorial
result=$(calculate_factorial "$number")
echo "$number! = $result"
