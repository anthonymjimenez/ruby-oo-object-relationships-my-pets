class Owner
  # code goes here
  #attr_accessor 
  attr_reader :name, :species
  @@all = []
  def initialize (name, species = "human")
    @name = name 
    @species = species
    @@all.push(self)
  end
  def say_species
    "I am a #{@species}."
  end

  def cats 
    Cat.all.filter { |catObject| catObject.owner === self }
  end

  def dogs
    Dog.all.filter {|dogs| dogs.owner === self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end
  
    def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.map { |e| e.mood = 'happy' }
  end

  def feed_cats
    self.cats.collect { |e| e.mood = 'happy' }
  end

  def pets 
    [dogs, cats].flatten
  end


  def sell_pets
    pets.map { |e| 
    e.mood = 'nervous'
    e.owner = nil
  } 
  end
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  


end
