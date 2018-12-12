class Restaurant
  @earnings = 0
  class << self
    attr_reader :earnings

    def bill_out(*meals)
      meals.each { |meal| @earnings += meal.cost }
    end
  end
end
