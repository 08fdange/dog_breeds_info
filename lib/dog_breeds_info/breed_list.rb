class DogBreedsInfo::BreedList
  attr_accessor :letter, :list 
  @@all = []

  def initialize(letter)
    @letter = letter
    @list = {}
    @@all << self
  end
  
  def self.all 
    @@all
  end

  def get_list
    DogBreedsInfo::Scraper.scrape_breeds_from_letter(self)
  end
  
  def create_breeds
    self.list.each do |key, value|
      Breed.new(key, value)
    end
  end
    
end