class DogBreedsInfo::BreedList
  attr_accessor :letter, :list 
  
  def initialize(letter)
    @letter = letter
    @list = {}
  end
    
  def get_list
    DogBreedsInfo::Scraper.scrape_breeds_from_letter(self)
  end
    
  def display_list
    self.list.each do |key, value|
      puts "#{key + 1}. #{value}"
    end
  end
end