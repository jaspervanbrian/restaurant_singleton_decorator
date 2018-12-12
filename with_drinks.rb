class WithDrinks < MealDecorator
  def cost
    @meal.cost + 12
  end
end
