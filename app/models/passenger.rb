class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    # iterate through all rides and pull out where passenger is self
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    rides.map do |ride|
      ride.driver
    end
  end

  def total_distance
    total_distance = 0.0
    
    rides.each do |ride|
      total_distance += ride.distance
    end

    total_distance
  end

  def self.premium_members
    self.all.select do |i|
      i.total_distance > 100
    end
  end

end