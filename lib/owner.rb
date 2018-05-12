class Owner
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
  end
  
  def species
    @species
  end
  
  
  def self.all
    @@all
  end
  
end