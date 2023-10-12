# Roll the die and update the dictionary until one number reaches 10 times
while true; do
  # Simulate rolling a fair six-sided die (1 to 6)
  result=$((1 + RANDOM % 6))

  # Update the dictionary with the result
  if [ -n "${die_results[$result]}" ]; then
    die_results[$result]=$((die_results[$result] + 1))
  else
    die_results[$result]=1
  fi

  # Check if any number has reached 10 times
  for number in "${!die_results[@]}"; do
    if [ "${die_results[$number]}" -eq 10 ]; then
      echo "Number $number has been rolled 10 times."
      exit
    fi
  done
done
