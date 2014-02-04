require 'minitest/autorun'
require_relative 'teddit'
require_relative 'story'

describe Teddit do

  it "has an array to hold stories" do
    teddit = Teddit.new
    teddit.stories.must_equal []
  end

  it "allows a story to be added" do
    story = Story.new({:title => "Cats are great right?", :category =>"food"})
    teddit = Teddit.new
    teddit.stories << story
    teddit.stories.must_equal [story]
  end

  ##############
  ### Extra! ###
  ##############

  it "gives us every story" do
    teddit = Teddit.new
    cat_story = Story.new({ :title => "Cats are great right?", :category => "nothing" })
    food_story = Story.new({ :title => "Bacon is actually great!", :category => "food" })
    teddit.stories = [cat_story, food_story]
    teddit.display_stories.must_equal "Cats are great right?, Category: Nothing, Current Upvotes: 5\nBacon is actually great!, Category: Food, Current Upvotes: 24"
  end
end
