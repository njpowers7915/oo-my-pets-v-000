class Owner
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @@all << self
    @pets = pets
  end
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
 def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    
  end
  
  def play_with_cats
    
  end
  
  def feed_fish
    
  end
    
  
  def species
    @species
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
    @@all.count
  end
  
  def self.all
    @@all
  end
  
end