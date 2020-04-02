class Dog
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save #can also be written as self.save , but not recommended.   
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.print_all
    Dog.all.each{|x| puts x.name}
  end 

  def save 
    @@all << self 
  end 

  def self.clear_all 
    Dog.all.clear
  end 
end 