class Owner
  @@all = []
  
  def initialize(species)
    @species = species
  end
  
  def species
    @species
  end
  
  
  def self.all
    @@all
  end
  
  def save
    @all << self
  end
  
end