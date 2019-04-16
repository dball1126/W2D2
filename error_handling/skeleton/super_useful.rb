# PHASE 2
def convert_to_int(str)

  
  begin
    Integer(str)
  rescue => exception
    return nil
  end
  
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]
 class CoffeeError < ArgumentError
    def message
      puts 'i like coffee but i want fruit'
    end
  end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
   elsif maybe_fruit == "coffee"
    raise CoffeeError
      # begin
      #   maybe_fruit == "coffee"
      #   raise ArgumentError.new("I like coffee, but I want a fruit.")
      # rescue ArgumentError => e
      #   puts e.message
      #   #  retry
      # end
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue  CoffeeError => e
      e.message
    retry
  rescue StandardError
      puts "Error"
  end
end  

# PHASE 4
class DescriptionError < ArgumentError
  def message
    puts "Names and pastimes must be greater than 1 character in length"
  end 
end


class YearError < ArgumentError
  def message
    puts "Years known must be >= 5 to be best friends."
  end 
end

class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @fav_pastime = fav_pastime
    @yrs_known = yrs_known
     
    raise YearError if @yrs_known < 5
    raise DescriptionError if @name.empty? || @fav_pastime.empty?
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


