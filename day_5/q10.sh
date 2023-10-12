
# Read a single-digit number from the user
read -p "Enter a single-digit number: " number

# Check if the input is a single-digit number
if [[ ! "$number" =~ ^[0-9]$ ]]; then
  echo "Invalid input. Please enter a single-digit number."
  exit 1
fi

# Convert the single-digit number to its word representation
case "$number" in
  0) echo "Zero";;
  1) echo "One";;
  2) echo "Two";;
  3) echo "Three";;
  4) echo "Four";;
  5) echo "Five";;
  6) echo "Six";;
  7) echo "Seven";;
  8) echo "Eight";;
  9) echo "Nine";;
esac
