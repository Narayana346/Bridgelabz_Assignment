
# Read a number from the user
read -p "Enter a number (1-7) representing a day of the week: " number

# Check if the input is a valid number
if ! [[ "$number" =~ ^[1-7]$ ]]; then
  echo "Invalid input. Please enter a number between 1 and 7."
  exit 1
fi

# Convert the number to its corresponding weekday
case "$number" in
  1) echo "Sunday";;
  2) echo "Monday";;
  3) echo "Tuesday";;
  4) echo "Wednesday";;
  5) echo "Thursday";;
  6) echo "Friday";;
  7) echo "Saturday";;
esac
