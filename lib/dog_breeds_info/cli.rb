class DogBreedsInfo::CLI 
  
  def call
    get_breed_letter
  end
  
  def get_breed_letter
    puts "Hello, please enter the first letter of the breed you'd like more information on using 'a-z' or type 'exit': "
    input = nil 
    while input != "exit"
      input = gets.chomp
      puts "All breeds with the letter #{input}:"
    end
  end
  
  
end