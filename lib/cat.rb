class Cat
  attr_accessor :mood
  attr_reader :name
 @@cat_count = []
  
  def count
    @@cat_count
  end
  
  def save
    @@cat_count << self
  end
 
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end