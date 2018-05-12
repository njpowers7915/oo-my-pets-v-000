class Owner
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @@all << self
    @pets = pets
  end
 
  def list_pets
    pets.each do |pet_type, instance_array|
      counts = []
      if pet_type == :fishes
        fish_count = instance_array.count
        counts << fish_count
      elsif pet_type == :dogs
        dog_count = instance_array.count
        counts << dog_count
      elsif pet_type == :cats
        cat_count = instance_array.count
        counts << cat_count
      end
      counts
    end
    "I have #{counts[0]} fish, #{counts[1]} dog(s), and #{counts[2]} cat(s)."
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