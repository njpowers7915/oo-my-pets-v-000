class Dog
  attr_accessor :mood
  attr_reader :name
 @@dog_count = []
  
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