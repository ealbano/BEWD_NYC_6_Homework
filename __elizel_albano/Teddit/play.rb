require_relative "story"
require_relative "teddit"

teddit = Teddit.new
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

puts "Here are the stories that have been added from digg, mashable and reddit"
#teddit.get_from_digg
teddit.get_from_mashable
teddit.get_from_reddit

puts "Thank you coming to Teddit!"

puts "The following are being tracked"
puts teddit.display_stories
