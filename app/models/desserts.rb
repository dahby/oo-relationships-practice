class Dessert
  attr_reader :name, :bakery
  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery

    @@all << self
  end

  def self.all
    @@all
  end
end