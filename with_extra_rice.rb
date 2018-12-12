class WithExtraRice < MealDecorator
  def cost
    @meal.cost + 5
  end
end
