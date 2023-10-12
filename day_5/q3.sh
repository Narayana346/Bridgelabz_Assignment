
# Generate two random dice numbers between 1 and 6
dice_number1=$(( (RANDOM % 6) + 1 ))
dice_number2=$(( (RANDOM % 6) + 1 ))

# Add the two dice numbers
result=$((dice_number1 + dice_number2))

echo "Dice 1: $dice_number1"
echo "Dice 2: $dice_number2"
echo "Sum of two dice: $result"
