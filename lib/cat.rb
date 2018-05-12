class Cat
  attr_accessor :mood
  attr_reader :name
 @@cat_count = 0
  
  def self.count
    @@cat_count
  end
  
 # def save
 #   @@cat_count << self
 # end
 
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @@cat_count += 1
  end
end