class DogBreedsInfo::BreedList::Breed
  attr_accessor :name, :link, :info
  @@all = []
  
  def initialize(name, link)
    @name = name
    @link = link
    @@all << self
  end
  
  #def get_info(dog_chosen)
    #self.info
  #end
  
  def self.display_all
    @@all.each do |item|
      puts "#{item.name} : #{item.link}"
    end
  end
end