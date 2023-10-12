# Initialize variables
goal=200
money=100
bets=0
wins=0

# Loop until the goal is reached or all money is lost
while [ $money -gt 0 ] && [ $money -lt $goal ]; do
  ((bets++))
  # Simulate a coin flip (0 for loss, 1 for win)
  result=$((RANDOM % 2))

  if [ $result -eq 0 ]; then
    # Lost the bet, deduct Re 1
    ((money--))
  else
    # Won the bet, add Re 1
    ((money++))
    ((wins++))
  fi
done

# Display results
echo "Total bets made: $bets"
echo "Total wins: $wins"
echo "Final balance: Rs $money"

if [ $money -eq 0 ]; then
  echo "You went broke. Better luck next time!"
elif [ $money -eq $goal ]; then
  echo "Congratulations! You reached the goal of Rs $goal."
fi
