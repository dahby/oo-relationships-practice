require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

b1 = Bakery.new('The Berkery')
b2 = Bakery.new('Bakery Neavoux')

d1 = Dessert.new('Cheesecake', b1)
d2 = Dessert.new('cookies', b2)
d3 = Dessert.new('cake', b2)

i1 = Ingredient.new('flour', d2, 500)
i2 = Ingredient.new('sugar', d2, 200)
i3 = Ingredient.new('cream cheese', d1, 800)

# p1 = Passenger.new('David')
# p2 = Passenger.new('Steve')

# d1 = Driver.new('Bill')
# d2 = Driver.new('Ellie')

# r1 = Ride.new(p1, d1, 20)
# r2 = Ride.new(p2, d1, 20)
# r3 = Ride.new(p2, d2, 20)

Pry.start
