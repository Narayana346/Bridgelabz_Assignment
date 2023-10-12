# Generate birth months for 50 individuals between 1992 and 1993
for ((i = 1; i <= 50; i++)); do
  birth_year=$((1992 + RANDOM % 2))  # Generate 1992 or 1993
  birth_month=$((1 + RANDOM % 12))   # Generate a random month (1 to 12)
  birth_months+=("$birth_year-$birth_month")
done

# Initialize an associative array to store individuals by birth month
declare -A individuals_by_month

# Group individuals by birth month
for month in "${birth_months[@]}"; do
  if [ -n "${individuals_by_month[$month]}" ]; then
    individuals_by_month[$month]="${individuals_by_month[$month]} $month"
  else
    individuals_by_month[$month]="$month"
  fi
done

# Display individuals with the same birth month
for month in "${!individuals_by_month[@]}"; do
  individuals="${individuals_by_month[$month]}"
  count=$(tr -s ' ' <<< "$individuals" | wc -w)
  if [ "$count" -ge 2 ]; then
    echo "Birth month: $month, Individuals: $individuals"
  fi
done
