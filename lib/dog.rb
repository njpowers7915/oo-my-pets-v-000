class Dog
  attr_accessor :mood
  attr_reader :name
 @@dog_count = []
  
  def self.count
    @@dog_count.count
  end
  
 # def save
#    @@dog_count << self
 # end
  
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @@dog_count << self
  end
end