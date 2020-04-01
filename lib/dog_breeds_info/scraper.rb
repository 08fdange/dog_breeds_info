class DogBreedsInfo::Scraper
  def self.scrape_breeds_from_letter(breed_list)
    breed_list.list = {}
    doc = Nokogiri::HTML(open("https://dogtime.com/dog-breeds/profiles"))
    dog_breed_by_letter = doc.css("div.article-crumbs.clearfix.group-letter.letter-" + breed_list.letter + ".js-letter-section.paws")
    breeds = dog_breed_by_letter.css("div.list-item a.list-item-title")
    breeds.each do |breed|
      breed_list.list[breed.text] = breed['href']
    end
    breed_list
  end
  
  def self.scrape_breed_info(breed)
    doc2 = Nokogiri::HTML(open(breed.link))
    puts doc2.css("div.breeds-single-intro p").first.text.strip
  end
end