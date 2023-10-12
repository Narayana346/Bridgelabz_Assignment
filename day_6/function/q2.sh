# Function to check if a number is a palindrome
is_palindrome() {
  local num="$1"
  local reversed=0
  local original="$num"

  while [ "$num" -gt 0 ]; do
    remainder=$((num % 10))
    reversed=$((reversed * 10 + remainder))
    num=$((num / 10))
  done

  if [ "$original" -eq "$reversed" ]; then
    return 0  # It's a palindrome
  else
    return 1  # It's not a palindrome
  fi
}

# Example usage:
number1=1241
number2=12321

if is_palindrome "$number1"; then
  echo "$number1 is a palindrome."
else
  echo "$number1 is not a palindrome."
fi

if is_palindrome "$number2"; then
  echo "$number2 is a palindrome."
else
  echo "$number2 is not a palindrome."
fi
