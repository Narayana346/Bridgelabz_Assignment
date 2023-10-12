
# Part a: Convert inches to feet
inches=42
feet=$(echo "scale=2; $inches / 12" | bc)
echo "42 inches is equal to $feet feet"

# Part b: Convert area of a rectangular plot from feet to meters
length_feet=60
width_feet=40

area_square_feet=$((length_feet * width_feet))
area_square_meters=$(echo "scale=2; $area_square_feet * 0.3048 * 0.3048" | bc)
echo "Area of the plot: $area_square_meters square meters"

# Part c: Calculate the area of 25 plots in acres
total_plots=25
total_area_square_feet=$((total_plots * area_square_feet))
total_area_acres=$(echo "scale=2; $total_area_square_feet / 43560" | bc)
echo "Total area of 25 plots: $total_area_acres acres"
