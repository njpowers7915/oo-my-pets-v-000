class Owner
  attr_accessor :name
  @@all = []
  
  def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @@all << self
    @pets = pets
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