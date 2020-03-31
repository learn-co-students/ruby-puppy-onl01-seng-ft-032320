require "pry"

class Dog 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.save
    # @@all << self
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.print_all
    @@all.each { |i| puts i.name }
  end
  
  
  def self.clear_all
    @@all = []
  end
  
end 