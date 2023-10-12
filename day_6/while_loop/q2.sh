# Initialize counters for Heads and Tails
heads_count=0
tails_count=0

# Continue the loop until one side wins 11 times
while [ $heads_count -lt 11 ] && [ $tails_count -lt 11 ]; do
  # Perform a coin flip (0 for Heads, 1 for Tails)
  result=$((RANDOM % 2))

  if [ $result -eq 0 ]; then
    echo "Heads"
    ((heads_count++))
  else
    echo "Tails"
    ((tails_count++))
  fi
done

# Determine the winner
if [ $heads_count -eq 11 ]; then
  echo "Heads wins 11 times!"
elif [ $tails_count -eq 11 ]; then
  echo "Tails wins 11 times!"
fi
