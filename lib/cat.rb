class Cat
  attr_accessor :mood
  attr_reader :name
 @@cat_count = []
  
  def count
    @@dog_count
  end
  
  def save
    @@dog_count << self
  end
 
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end