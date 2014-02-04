########################################################################################
#                               ----- TEDDIT! -----                                    #
#                                     Part #2                                          #
#                                                                                      #
# We're going to add a remote data source to pull in stories from Mashable and Digg.   #
#                                                                                      #
# Instructions:                                                                        #
#                                                                                      #
#    These stories will also be upvoted based on our rules. No more user input!        #
#                                                                                      #
#    Pull the json, parse it and then make a new story hash out of                     #
#    each story(Title, Category, Upvotes)                                              #
#                                                                                      #
#    Add each story to an array and display your "Front page"                          #
#                                                                                      #
#    Bring in the top news stories from the following APIs:                            #
#     - Reddit   ( http://www.reddit.com/.json )                                       #
#     - Digg     ( http://digg.com/api/news/popular.json )                             #
#     - Mashable ( http://mashable.com/stories.json )                                  #
#                                                                                      #
########################################################################################
require 'json'
require 'rest-client'

class Teddit

	attr_accessor :stories
	def initialize
		@stories = []
	end

  def get_input
    gets.strip
  end

  def display_stories
  	stories.join("\n")
  end

  def get_from_reddit
    reddit_stories = JSON.parse(RestClient.get("http://www.reddit.com/.json"))["data"]["children"]
    reddit_stories.each do |reddit_story|
    story_data = reddit_story["data"]
    stories << Story.new({title: story_data["title"], category: story_data["subreddit"]})   
  end
end

def get_from_mashable
  mashable_stories = JSON.load(RestClient.get('http://mashable.com/stories.json'))

  mashable_stories["hot"].each do |mashable_story|
      stories << Story.new({title:mashable_story["title"], category: mashable_story["channel"]})
    end
end

#def get_from_digg
# digg_stories = JSON.parse(RestClient.get("http://digg.com/api/news/poplar.json"))["data"]["meta"]
# digg_stories.each do |digg_story|
# story_data = digg_story["data"]
#     stories << Story.new({title: story_data["title"], category: })

  ###def get_from_reddit
  	###response = RestClient.get("http://reddit.com/.json")
  	###parsed_reddit = JSON.parse(response)
  	###parsed_reddit["data"]["children"].each do |story|
  		###story_title = story["data"]["title"]
  		###story_category = story["data"]["subreddit"]
  		###@stories << Story.new({title: story_title, category: story_category})
  ###end

end
