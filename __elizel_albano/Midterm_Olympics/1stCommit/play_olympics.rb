###########################################################################
# WOT (Winter Olympic Tweets) Application
# By Elizel Albano
# December 2013
# Back End Web Development Midterm
# 1 of 2
# -------------------------------------------------------------------------
## MIDTERM  REQUIREMENTS:
# Create a command line based application that fulfills these criteria:
# - Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# -	Connects to a 3rd party api where the call varies based on what the user gives you.
# -	Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
# -	Push code on Github.
###########################################################################

require_relative "olympics"
require 'pry'


puts "Welcome to the WOT (Winter Olympics Tweets) Application! Your resource for recent Twitter tweets on Winter Olympics sports!"

puts "---"

puts "Please enter the Winter Olympics sport you'd like to see recent tweets (e.g. alpine skiing, biathlon, bobsled, figure skating, ice hockey, luge, skeleton, ski jump, snowboarding or speed skating):"

sport_to_tweet

puts "---"

puts "Thank you for using WOT!"