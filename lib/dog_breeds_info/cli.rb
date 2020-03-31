class DogBreedsInfo::CLI 
  
  def call
    puts "Hello, please enter the first letter of the breed you'd like more information on using 'a-z' or type 'exit': "
    get_breed_list
  end
  
  def get_breed_list
    input = nil 
    while input != "exit"
      input = gets.chomp
      puts "All breeds with the letter #{input}:"
    end
  end
  
  def list_breeds(breed_letter)
    
  end
  
  def get_breed
    puts "Please enter the number of the dog you wish to learn about: "
    number = gets.to_i - 1 
    
    
  end
  
end