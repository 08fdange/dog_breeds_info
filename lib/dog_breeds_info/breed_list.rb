class DogBreedsInfo::BreedList
  attr_accessor :letter, :list 
  
  def initialize(letter)
    @letter = letter
    @list = {}
  end
    
  def get_list
    DogBreedsInfo::Scraper.scrape_breeds_from_letter(self)
  end
  
  def create_breeds
    self.list.each do |key, value|
      Breed.new(key, value)
    end
  end
    
  def display_list
    self.list.each_with_index do |(key, value), i|
      puts "#{i+1}. #{key}"
    end
  end
end