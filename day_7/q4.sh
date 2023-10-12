# Function to find three integers that add up to zero
find_triplets() {
  local array=("$@")
  local n=${#array[@]}

  for ((i = 0; i < n - 2; i++)); do
    for ((j = i + 1; j < n - 1; j++)); do
      for ((k = j + 1; k < n; k++)); do
        if [ $((array[i] + array[j] + array[k])) -eq 0 ]; then
          echo "Triplet: ${array[i]} ${array[j]} ${array[k]}"
        fi
      done
    done
  done
}

# Sample array of integers
numbers=(1 2 -3 4 -1 -2 3 -4)

# Call the function to find triplets that add up to zero
find_triplets "${numbers[@]}"
