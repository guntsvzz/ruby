class CountryDictionary
    def initialize
      @countries = {
        'thailand': 'Bangkok',
        'vietnam': 'Hanoi',
        'myanmar': 'Naypyidaw',
        'malaysia': 'Kuala Lumpur',
        'singapore': 'Singapore',
        'indonesia': 'Jakarta',
        'philippines': 'Manila',
        'cambodia': 'Phnom Penh',
        'laos': 'Vientiane',
        'brunei': 'Bandar Seri Begawan'
      }
    end
  
    # Method to display the country names
    def display_country_names
      puts 'Available countries:'
      @countries.keys.each do |country|
        puts country.to_s.capitalize
      end
    end
  
    # Method to get user input and show the capital city of the entered country
    def get_country_capital
      print 'Enter a country name to lookup: '
      country_input = gets.chomp.downcase.to_sym
      if @countries.key?(country_input)
        puts "#{country_input.to_s.capitalize}'s capital is #{@countries[country_input]}."
      else
        puts 'Country not found in the dictionary.'
      end
    end
  
    # Method to prompt the user for new country names
    def run
      loop do
        puts "1: Display available country names"
        puts "2: Lookup capital city of a country"
        puts "3: Break"
        print 'Choose an option: '
        choice = gets.chomp.to_i
  
        case choice
        when 1
          display_country_names
        when 2
          get_country_capital
        when 3
          puts 'Goodbye!'
          break
        else
          puts 'Invalid option. Please try again.'
        end
      end
    end
  end
  
# Create an instance and run the program
country_dictionary = CountryDictionary.new
country_dictionary.run
