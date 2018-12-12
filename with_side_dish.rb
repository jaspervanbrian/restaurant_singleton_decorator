class WithSideDish < MealDecorator
  def cost
    @meal.cost + 10
  end
end
