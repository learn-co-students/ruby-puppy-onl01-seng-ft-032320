class Dog
 @@all = Array.new
  attr_accessor :name

# use the self keyword(name?) inside the #initialize method to refer to the new dog
# you are trying to store in your @@all array

def initialize(name)
  @name = name
  save
end
# save should push self into @@all
# initialize should use our #save method
def save
  @@all << self
end
# .all should read the variable from inside the Dog class and should act as a way
# to access the Dog class from the outside
def self.all
  @@all
end

# clear_all should reset or restart our program with a class method
# should operate on the @@all array of existing dogs and empty that array
def self.clear_all
  @@all.clear
end

# print_all should iterate over all of the individual dogs stored in the @@all array
# puts out their name to the terminal
def self.print_all
  self.all.each { |dog| puts dog.name }
end

end
