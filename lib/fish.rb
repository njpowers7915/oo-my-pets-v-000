class Fish
  attr_accessor :mood
  
  def name
    @name
  end
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end