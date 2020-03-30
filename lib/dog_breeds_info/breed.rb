class DogBreedsInfo::Breed
  attr_accessor :name, :info
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  
end