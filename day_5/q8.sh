
# Read the year from user input
read -p "Enter a year: " year

# Check if the input is a 4-digit number
if [[ ! "$year" =~ ^[0-9]{4}$ ]]; then
  echo "Invalid input. Please provide a 4-digit year."
  exit 1
fi

# Check if it's a leap year
if (( (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 )); then
  echo "$year is a leap year."
else
  echo "$year is not a leap year."
fi
