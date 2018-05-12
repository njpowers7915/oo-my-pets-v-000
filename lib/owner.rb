class Owner
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @@all << self
    @pets = pets
  end
  
  def sell_pets
    
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
    pets.each do |pet_type, instance|
      if pet_type = :dogs
        instance.map {|i| i.mood=("happy")}
      end
    end
  end
  
  def play_with_cats
    pets.each do |pet_type, instance|
      if pet_type = :cats
        instance.map {|i| i.mood=("happy")}
      end
    end
  end
  
  def feed_fish
    pets.each do |pet_type, instance|
      if pet_type = :fishes
        instance.map {|i| i.mood=("happy")}
      end
    end
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