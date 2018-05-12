class Owner
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @@all << self
    @pets = pets
  end
 
  def list_pets
    "I have #{Fish.count} fish, #{Dog.count} dog(s), and #{Cat.count} cat(s)."
  end
  
  def sell_pets
    pets.each do |pet_type, instance|
      instance.each do |i| 
        i.mood=("nervous")
      end
    end
    pets[:fishes] = []
    pets[:dogs] = []
    pets[:cats] = []
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    #new_fish.save
    pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    #new_cat.save
    pets[:cats] << Cat.new(name)
  end
  
 def buy_dog(name)
    new_dog = Dog.new(name)
    #new_dog.save
    pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    pets.each do |pet_type, instance|
      if pet_type == :dogs
        instance.map {|i| i.mood=("happy")}
      end
    end
  end
  
  def play_with_cats
    pets.each do |pet_type, instance|
      if pet_type == :cats
        instance.map {|i| i.mood=("happy")}
      end
    end
  end
  
  def feed_fish
    pets.each do |pet_type, instance|
      if pet_type == :fishes
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