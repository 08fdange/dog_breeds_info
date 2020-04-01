class DogBreedsInfo::CLI 
  attr_accessor :input, :number
  
  def call
    puts "Hello, please enter the first letter of the breed you'd like more information on using 'a-z' or type 'exit': "
      get_breed_list
      get_breed
    #DogBreedsInfo::BreedList::Breed.display_all
  end
  
  def get_breed_list
    @input = gets.chomp
    puts "All breeds with the letter #{input.upcase}:"
    new_list = DogBreedsInfo::BreedList.new(input)
    new_list.get_list
    new_list.display_list
    new_list.create_breeds
  end
  
  
  def get_breed
    puts "Please enter the number of the dog you wish to learn about: "
    @number = gets.to_i - 1
    chosen_breed = DogBreedsInfo::BreedList::Breed.all[@number]
    chosen_breed.add_breed_info
  end
  
end