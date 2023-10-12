# Prompt the user to enter a number
read -p "Enter a number (n): " n

# Validate that 'n' is a positive integer
if ! [[ $n =~ ^[1-9][0-9]*$ ]]; then
  echo "Please provide a positive integer as 'n'."
  exit 1
fi

# Initialize the harmonic number to 0
harmonic=0

# Calculate the nth harmonic number
for ((i=1; i<=n; i++)); do
  harmonic=$(awk "BEGIN { print $harmonic + 1/$i }")
done

echo "The $n-th harmonic number is: $harmonic"
