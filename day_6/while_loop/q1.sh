# Prompt the user to enter a number
read -p "Enter a number (n): " n

# Validate that 'n' is a non-negative integer
if ! [[ $n =~ ^[0-9]+$ ]]; then
  echo "Please provide a non-negative integer as 'n'."
  exit 1
fi

# Calculate and print the table of powers of 2, not exceeding 256
power=0
result=1

while [ "$power" -le "$n" ] && [ "$result" -le 256 ]; do
  echo "2^$power = $result"
  ((power++))
  result=$((2 ** power))
done
