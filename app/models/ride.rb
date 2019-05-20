class Ride

  attr_reader :passenger, :driver
  attr_accessor :distance

  @@all = []

  def initialize(passenger, driver, distance=0.0)
    @passenger = passenger
    @driver = driver
    if distance.class == Float
      @distance = distance
    else 
      @distance = distance.to_f
    end

    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_distance = 0.0
    
    @@all.each do |i|
      total_distance += i.distance 
    end

    total_distance / @@all.length
  end

end