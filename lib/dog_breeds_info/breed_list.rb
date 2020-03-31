class DogBreedsInfo::BreedList
  attr_accessor :letter, :list 
  
  def initialize(letter)
    @letter = letter
    @list = []
  end
    
  def get_list
    DogBreedsInfo::Scraper.scrape_breeds_from_letter(self)
  end
    
  def display_list
    puts @list
  end
end