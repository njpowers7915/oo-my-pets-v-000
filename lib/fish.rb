class Fish
  attr_accessor :mood
  attr_reader :name
  @@fish_count = []
  
  def self.count
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