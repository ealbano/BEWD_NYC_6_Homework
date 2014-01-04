
###############################################################################
# 1/3/14
#
# Back-End Web Development - Homework
#
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game.
# In this game players have three tries to guess a secret number between 1 and 10.
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game.
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
#		and that they only have 3 tries to do so.
#
#	Functionality:
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
#
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

class SecretNumber
  attr_reader :guesses, :number
  attr_accessor :name
  def initialize(number=nil)
    @number = number
    @number = rand(10) + 1 unless @number # Random number between 1 and 10
    @guesses = 3
    @play_name = player_name
  end

  def play
    puts greeting
    puts player_name
    name = gets.to_s
    puts "Hi #{name}"
    puts starting_instructions
    @guesses.downto(1) do |x|
      puts "---"
      puts "You have #{x} guesses!"
      puts "Please make a guess:"
      guess = gets.to_i
      return if correct_number?(guess)
    end
    puts "Sorry! You did not guess correctly! The correct number is #{number}."
  end

  def correct_number?(guess)
    if @number <  guess
      puts "You've guessed too high"
      return false
    elsif @number > guess
      puts "You've guessed too low"
      return false
    else @number = guess
      puts "Congratulations on the right answer which is #{number}!"
      return true
    end
  end

  def greeting
    "Welcome to the secret number game!"
  end

  def player_name
    "What is your name?"
  end

  def starting_instructions
    "You have three guesses to guess the right number from 1 to 10."
  end

  ##### More Code

end

private
# Don't touch anything below this line
def ____(*args)
  abort "Incomplete File. Go back and fill in ____"
end
