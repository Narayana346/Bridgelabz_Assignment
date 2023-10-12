
# Generate a random number between 1 and 6 (inclusive)
dice_number=$(( (RANDOM % 6) + 1 ))

echo "Random dice roll: $dice_number"
