###########################################################################
# WOT (Winter Olympic Tweets) Application
# By Elizel Albano
# 1/4/14
# Back End Web Development Midterm
# 1 of 2
# -------------------------------------------------------------------------
## MIDTERM  REQUIREMENTS:
# Create a command line based application that fulfills these criteria:
# - Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# -	Connects to a 3rd party api where the call varies based on what the user gives you.
# -	Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
# -	Push code on Github.
########################### => ################################################

require_relative "olympics2"
require 'pry'


puts "Welcome to the WOT (Winter Olympics Tweets) Application! Your resource for recent Twitter tweets on Winter Olympics sports!"

puts "---"

puts "Please enter the number for corresponding Winter Olympics sport you'd like to get recent tweets:

0 - Alpine Skiing
1 - Biathlon
2 - Bobsled
3 - Figure Skating
4 - Ice Hockey
5 - Luge
6 - Skeleton
7 - Ski Jump
8 - Snowboarding
9 - Speed Skating"

sport = gets.strip.to_i

sport_to_tweet

puts "---"

puts "Thank you for using WOT!"