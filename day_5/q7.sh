
read -p "Enter the day: " day
read -p "Enter the month: " month

# Check if the month is between March (3) and June (6)
if [ "$month" -ge 3 ] && [ "$month" -le 6 ]; then
  # Check specific ranges for each month
  case "$month" in
    3)
      if [ "$day" -ge 20 ] && [ "$day" -le 31 ]; then
        echo "True"
      else
        echo "False"
      fi
      ;;
    6)
      if [ "$day" -ge 1 ] && [ "$day" -le 20 ]; then
        echo "True"
      else
        echo "False"
      fi
      ;;
    *)
      # For April and May, any day is considered "True"
      echo "True"
      ;;
  esac
else
  echo "False"
fi
