class Puppy 
  attr_accessor :name, :breed, :age

  @@all = []

  def initialize(name, breed, age) # May need to set default args here
    @name, @breed, @age = name, breed, age
    @@all << self
  end

  def self.all
    @@all
  end

end
