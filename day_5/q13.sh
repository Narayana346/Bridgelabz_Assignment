# Read three numbers from the user
read -p "Enter the first number (a): " a
read -p "Enter the second number (b): " b
read -p "Enter the third number (c): " c

# Perform the arithmetic operations
result1=$((a + b * c))
result2=$((a % b + c))
result3=$((c + a / b))
result4=$((a * b + c))

# Initialize variables to keep track of the maximum and minimum results
max_result="$result1"
min_result="$result1"

# Check and update maximum and minimum results for result2
if [ "$result2" > "$max_result" ]; then
  max_result="$result2"
fi

if [ "$result2" < "$min_result" ]; then
  min_result="$result2"
fi

# Check and update maximum and minimum results for result3
if [ "$result3" > "$max_result" ]; then
  max_result="$result3"
fi

if [ "$result3" < "$min_result" ]; then
  min_result="$result3"
fi

# Check and update maximum and minimum results for result4
if [ "$result4" > "$max_result" ]; then
  max_result="$result4"
fi

if [ "$result4" < "$min_result" ]; then
  min_result="$result4"
fi

echo "Maximum result is: $max_result"
echo "Minimum result is: $min_result"
