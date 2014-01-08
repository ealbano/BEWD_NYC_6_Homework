###########################################################################
# WOT (Winter Olympic Tweets) Application
# By Elizel Albano
# 1/7/14
# Back End Web Development Midterm
# 1 of 1
# -------------------------------------------------------------------------
## MIDTERM  REQUIREMENTS:
# Create a command line based application that fulfills these criteria:
# - Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# -	Connects to a 3rd party api where the call varies based on what the user gives you.
# -	Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
# -	Push code on Github.
###########################################################################

require 'twitter'
require 'pry'



class Olympics

	def initialize
	end

	def greeting

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

		@sport = gets.strip.to_i

	end

	def sport_to_tweet 
		client = Twitter::REST::Client.new do |config|
			config.consumer_key = "vAd9IAB5A8AVWU8hI26BA"
			config.consumer_secret = "e60hV0pNApkhw5U8BB4od1XOCBFRqj2K6g3GJPyfRI"			
			config.access_token = "28804571-RJBtmyj3uEwSrUgP0ssyYKzGXDcRroQfLhs02rWvE"
			config.access_token_secret = "mxNIjt5a5KsWJ3DcauU8MNSrT2txD7cmTkH9kT6GKSxFs"
		end

		if @sport == 0 # Alpine Skiing
			puts "Here are the latest tweets on Alpine Skiing:"
			client.search("alpine skiing", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}" 
			end

		elsif @sport == 1 # Biathlon
		 	puts "Here are the latest tweets on Biathlon:"
		 	client.search("biathlon", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
		 		puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
		 	end

		elsif @sport == 2 # Bobsled
			puts "Here are the latest tweets on Bobsled:"
			client.search("bobsled", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
			end

		elsif @sport == 3 # Figure Skating
			puts "Here are the latest tweets on Figure Skating:"
			client.search("figure skating", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
			end

		elsif @sport == 4 # Ice Hockey
			puts "Here are the latest tweets on Ice Hockey:"
			client.search("ice hockey", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
			end

		elsif @sport == 5 # Luge
			puts "Here are the latest tweets on Luge:"
			client.search("luge", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
			end

		elsif @sport == 6 # Skeleton
			puts "Here are the latest tweets on Skeleton:"
			client.search("skeleton", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
			end

		elsif @sport == 7 # Ski Jump
			puts "Here are the latest tweets on Ski Jump:"
			client.search("ski jump", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
			end

		elsif @sport == 8 # Snowboarding
			puts "Here are the latest tweets on Snowboarding:"
			client.search("snowboarding", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
			end

		elsif @sport == 9 # Speed Skating
			puts "Here are the latest tweets on Speed Skating:"
			client.search("speed skating", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| 
				puts "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
			end

		else
			puts "Please enter the number for corresponding Winter Olympics sport"

		end

	end
end



olympics = Olympics.new
olympics.greeting
olympics.sport_to_tweet

puts "---"

puts "Thank you for using WOT!"