###########################################################################
# WOT (Winter Olympic Tweets) Application
# By Elizel Albano
# December 2013
# Back End Web Development Midterm
# 2 of 2
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

client = Twitter::REST::Client.new do |config|
	config.consumer_key = "vAd9IAB5A8AVWU8hI26BA"
	config.consumer_secret = "e60hV0pNApkhw5U8BB4od1XOCBFRqj2K6g3GJPyfRI"
	config.access_token = "28804571-RJBtmyj3uEwSrUgP0ssyYKzGXDcRroQfLhs02rWvE"
	config.access_token_secret = "mxNIjt5a5KsWJ3DcauU8MNSrT2txD7cmTkH9kT6GKSxFs"
end


class Olympics
	attr_accessor :sport

	def initialize (sport)
	@sport = sport
	end
end

def sport_to_tweet (sport)
	if @sport == "alpine skiing"
		puts "Here are the latest tweets on #{sport}:"
		client.search("alpine skiing", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "biathlon"
		puts "Here are the latest tweets on #{sport}:"
		client.search("biathlon", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "bobsled"
		puts "Here are the latest tweets on #{sport}:"
		client.search("bobsled", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "figure skating"
		puts "Here are the latest tweets on #{sport}:"
		client.search("figure skating", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "ice hockey"
		puts "Here are the latest tweets on #{sport}:"
		client.search("ice hockey", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "luge"
		puts "Here are the latest tweets on #{sport}:"
		client.search("luge", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "skeleton"
		puts "Here are the latest tweets on #{sport}:"
		client.search("skeleton", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "ski jump"
		puts "Here are the latest tweets on #{sport}:"
		client.search("ski jump", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "snowboarding"
		puts "Here are the latest tweets on #{sport}:"
		client.search("snowboarding", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	elsif @sport == "speed skating"
		puts "Here are the latest tweets on #{sport}:"
		client.search("speed skating", :count => 20, :result_type => "recent", :lang => "en").collect do |tweet| "User Id / Screen Name: #{tweet.user.id} / #{tweet.user.screen_name}: #{tweet.text}"
	else
		puts "Please enter a Winter Olympics sport"
	end
end
end