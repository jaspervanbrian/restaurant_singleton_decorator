class WithDrinks < MealDecorator
  def cost
    @meal.cost + 10
  end
end
