class Driver
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
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passengers
    rides.map do |ride|
      ride.passenger
    end
  end

  def total_distance
    total_distance = 0.0
    
    rides.each do |ride|
      total_distance += ride.distance
    end

    total_distance
  end

  def self.mileage_cap(dist)
    self.all.select do |i|
      i.total_distance > dist
    end
  end



end