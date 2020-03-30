class DogBreedsInfo::Scraper
  def self.scrape_breeds_from_letter(breed_letter)
    dogs = {}
    doc = Nokogiri::HTML(open("https://dogtime.com/dog-breeds/profiles"))
    dog_breed_by_letter = doc.css("div.article-crumbs.clearfix.group-letter.letter-" + breed_letter + ".js-letter-section.paws")
    breeds.each_with_index do |breed, i|
      puts "#{i+1}. #{breed.text}"
      dogs[i] = breed
    end
  end
end