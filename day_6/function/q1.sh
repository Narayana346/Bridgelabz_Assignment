# Function to convert from degrees Celsius to degrees Fahrenheit
celsius_to_fahrenheit() {
  local celsius="$1"
  local fahrenheit=$(awk "BEGIN { print ($celsius * 9/5) + 32 }")
  echo "$fahrenheit °F"
}

# Function to convert from degrees Fahrenheit to degrees Celsius
fahrenheit_to_celsius() {
  local fahrenheit="$1"
  local celsius=$(awk "BEGIN { print ($fahrenheit - 32) * 5/9 }")
  echo "$celsius °C"
}

# Prompt the user for their choice
read -p "Choose conversion (C to F or F to C): " choice

# Ensure the input is either 'C to F' or 'F to C'
case "$choice" in
  "C to F")
    read -p "Enter temperature in °C (between 0 °C and 100 °C): " celsius
    if ((celsius >= 0 && celsius <= 100)); then
      result=$(celsius_to_fahrenheit "$celsius")
      echo "Temperature in °F: $result"
    else
      echo "Temperature must be between 0 °C and 100 °C for this conversion."
    fi
    ;;
  "F to C")
    read -p "Enter temperature in °F (between 32 °F and 212 °F): " fahrenheit
    if ((fahrenheit >= 32 && fahrenheit <= 212)); then
      result=$(fahrenheit_to_celsius "$fahrenheit")
      echo "Temperature in °C: $result"
    else
      echo "Temperature must be between 32 °F and 212 °F for this conversion."
    fi
    ;;
  *)
    echo "Invalid choice. Please enter 'C to F' or 'F to C'."
    ;;
esac
