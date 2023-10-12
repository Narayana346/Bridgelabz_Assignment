# Prompt the user to enter a number
read -p "Enter a number (n): " n

# Validate that 'n' is a non-negative integer
if ! [[ $n =~ ^[0-9]+$ ]]; then
  echo "Please provide a non-negative integer as 'n'."
  exit 1
fi

# Calculate and print the table of powers of 2
power=1
while [ $power -le $n ]; do
  result=$((2 ** power))
  if [ $result < $n ]; then
    echo "2^$power = $result"
  else
    break
  fi
  ((power++))
done
