class MealDecorator
  def initialize(meal)
    @meal = meal
  end

  def cost
    @meal.cost
  end
end
