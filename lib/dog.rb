class Dog
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

  def initialize (name, owner=nil, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood 
    @@all.push(self)
  end
  def self.all
    @@all
  end
end