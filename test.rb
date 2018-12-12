require_relative 'meal'
require_relative 'meal_decorator'
require_relative 'restaurant'
require_relative 'with_extra_rice'
require_relative 'with_drinks'
require_relative 'with_side_dish'

# Order a meal
# Expected: 45 pesos
meal_1 = WithExtraRice.new(WithExtraRice.new(Meal.new))

# Bill out (singleton will register)
# Expected earnings = 45
Restaurant.bill_out(meal_1)

# Order another meal
# Expected: 35 pesos

meal_2 = Meal.new

# Bill out
# Expected earnings = 80
Restaurant.bill_out(meal_2)

# Order many meals
meal_3 = WithSideDish.new(WithExtraRice.new(WithExtraRice.new(WithDrinks.new(Meal.new))))
meal_4 = WithDrinks.new(WithExtraRice.new(Meal.new))
meal_5 = WithSideDish.new(WithExtraRice.new(WithExtraRice.new(Meal.new)))

# Bill out all
Restaurant.billout(meal_3, meal_4, meal_5)

# Print the earnings singleton variable
puts Restaurant.earnings
