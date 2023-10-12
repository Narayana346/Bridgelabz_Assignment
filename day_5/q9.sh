
# Generate a random number (0 or 1)
coin_flip=$((RANDOM % 2))

# Check the result and print "Heads" or "Tails"
if [ "$coin_flip" == 0 ]; then
  echo "Heads"
else
  echo "Tails"
fi
