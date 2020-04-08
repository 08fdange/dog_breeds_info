class DogBreedsInfo::CLI 
  attr_reader :new_list
  
  def call
    puts "Hello, please enter the first letter of the breed you'd like more information on using 'a-z' or type 'exit': "
      get_breed_list
      display_list
      get_breed_info
      program_loop_text
      user_decision
  end
  
  def reset_call
    reset_breed
    DogBreedsInfo::CLI.new.call
  end
  
  def get_breed_list
    input = gets.chomp
    if input == 'exit'
      exit!
    else
      @new_list = DogBreedsInfo::BreedList.all.find{|list| list.letter == input}
      if @new_list == nil
        @new_list = DogBreedsInfo::BreedList.new(input)
      end
      @new_list.get_list
    end
  end
  
  def display_list
    if @new_list.list != {}
      puts "All breeds with the letter #{@new_list.letter.upcase}:"
      @new_list.list.each_with_index do |(key, value), i|
        puts "#{i+1}. #{key}"
      end
      @new_list.create_breeds
    else
      reset_call
    end
  end
  
  def get_breed_info
    puts "Please enter the number of the dog you wish to learn about: "
    number = gets.to_i - 1
    if number < @new_list.list.length && number >= 0
      chosen_breed = DogBreedsInfo::BreedList::Breed.all[number]
      chosen_breed.add_breed_info
      puts chosen_breed.info
    else
      reset_get_breed_info
    end
  end
  
  def reset_get_breed_info
    get_breed_info
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
    input = gets.chomp.downcase
    if input == "start"
      reset_call
    elsif input == "exit"
      exit!
    else
      self.program_loop_text
    end
  end
  
end