require_relative "./dog_breeds_info/version"
require_relative "./dog_breeds_info/cli"
require_relative "./dog_breeds_info/breed_list"
require_relative "./dog_breeds_info/breed"
require_relative "./dog_breeds_info/scraper"

require 'nokogiri'
require 'open-uri'

module DogBreedsInfo
  class Error < StandardError; end
  # Your code goes here...
end
