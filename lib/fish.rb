class Fish
  attr_accessor :mood
  attr_reader :name
  @@fish_count = 0
  
  def self.count
    @@fish_count.count
  end
  
 # def save
  #  @@fish_count << self
  #end
  
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @@fish_count += 1
  end
end