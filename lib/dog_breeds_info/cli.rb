class DogBreedsInfo::CLI 
  attr_accessor :input, :number
  
  def call
    puts "Hello, please enter the first letter of the breed you'd like more information on using 'a-z' or type 'exit': "
      get_breed_list
      get_breed_info
      reset_breed
      program_loop_text
  end
  
  def get_breed_list
    @input = gets.chomp
  end
  
  def display_list
    if
    puts "All breeds with the letter #{@input.upcase}:"
    new_list = DogBreedsInfo::BreedList.new(input)
    new_list.get_list
    new_list.display_list
    new_list.create_breeds
  end
  
  def get_breed_info
    puts "Please enter the number of the dog you wish to learn about: "
    @number = gets.to_i - 1
    chosen_breed = DogBreedsInfo::BreedList::Breed.all[@number]
    chosen_breed.add_breed_info
  end
  
  def reset_breed
    DogBreedsInfo::BreedList::Breed.reset_all
  end
  
  def program_loop_text
    puts "\nWhat would you like to do next?"
    puts "Type 'start' to start from the beginning or type 'exit': "
    self.user_decision
  end
  
  def user_decision
    input = gets.chomp
    if input == "start"
      DogBreedsInfo::CLI.new.call
    elsif input == "exit"
      nil 
    else
      self.program_loop_text
    end
  end
  
end