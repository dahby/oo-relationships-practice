class Ingredient
  attr_reader :name, :dessert, :calorie_count

  @@all = []

  def initialize(name, dessert, calorie_count)
    @name = name
    @dessert = dessert
    @calorie_count = calorie_count

    @@all << self
  end

  def self.all
    @@all
  end
end