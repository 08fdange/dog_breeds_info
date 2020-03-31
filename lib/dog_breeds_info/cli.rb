class DogBreedsInfo::CLI 
  attr_accessor :input, :number
  
  
  def call
    puts "Hello, please enter the first letter of the breed you'd like more information on using 'a-z' or type 'exit': "
    @input = nil
    while input != "exit"
      get_breed_list
      get_breed
    end
  end
  
  def get_breed_list
    @input = gets.chomp
    puts "All breeds with the letter #{input.upcase}:"
    new_list = DogBreedsInfo::BreedList.new(input)
    new_list.get_list
    new_list.display_list
  end
  
  
  def get_breed
    puts "Please enter the number of the dog you wish to learn about: "
    @number = gets.to_i - 1
    
  end
  
end