

class Dog
  attr_accessor :name
  @@all = []
  @@name = []
  
  
  def initialize (name)
    @name = name
    @@name << name
  save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each{|dog| puts dog.name}
  end
  
  def self.save
    @@all << self
  end
  
  def self.clear_all
    @@all.clear
  end
  def save
    @@all << self
  end
  
  
  
end