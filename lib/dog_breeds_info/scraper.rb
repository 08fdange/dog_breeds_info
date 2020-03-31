class DogBreedsInfo::Scraper
  def self.scrape_breeds_from_letter(breed_list)
    breed_list.list = []
    doc = Nokogiri::HTML(open("https://dogtime.com/dog-breeds/profiles"))
    dog_breed_by_letter = doc.css("div.article-crumbs.clearfix.group-letter.letter-" + breed_list.letter + ".js-letter-section.paws")
    breeds.each do |breed|
      breed_list.list << breed.text 
    end
    breed_list.list 
  end
end