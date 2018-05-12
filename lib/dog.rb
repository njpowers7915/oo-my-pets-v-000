class Dog
  attr_accessor :mood
  attr_reader :name
 @@dog_count = []
  
  def count
    @@fish_count
  end
  
  def save
    @@fish_count << self
  end
  
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end