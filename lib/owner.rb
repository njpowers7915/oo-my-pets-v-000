class Owner
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
  end
  
  def species
    @species
  end
  
  def say_species
    puts "I am a #{@species}."
  
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