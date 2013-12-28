require_relative "story"
require 'minitest/autorun'
require 'minitest/spec'

describe Story do
  describe "#initialize" do
    it "takes hash to create a new story" do
      story = Story.new({:title => "nothing", :category => "food" })
      story.title.must_equal "nothing"
      story.category.must_equal "food"
    end
  end
  describe "#upvotes" do
    it "multiples upvotes by 5 if cat is present" do
      story = Story.new({:title => "Cats frolic despite tuna shortage", :category => "nothing"})
      story.upvotes.must_equal 5
    end

    it "multiplies upvotes by 8 for bacon stories" do
      story = Story.new({:title => "Board certified baconologist", :category => "nothing"})
      story.upvotes.must_equal 8
    end

    it "gets 3 times more upvotes for food categories" do
      story = Story.new({:title => "nothing", :category => "food" })
      story.upvotes.must_equal 3
    end

    it "multiplies upvotes for both category and story" do
      story = Story.new({:title => "bacon!", :category => "food" })
      story.upvotes.must_equal 24
    end

    it "multiplies regardless of case" do
      story = Story.new({:title => "CaT", :category => "foodIe"})
      story.upvotes.must_equal 15
    end
  end

  describe "#to_hash" do
    it "returns a hash of all attributes" do
      story = Story.new({:title => "CaT", :category => "foodIe"})
      story.to_hash.must_equal({:title => "CaT", :category => "foodIe", :upvotes => 15})
    end
  end

  describe "#to_s" do
    it "gives a formatted string" do
      story = Story.new({:title => "Cats frolic despite tuna shortage", :category => "nothing"})
      story.to_s.must_equal "Cats frolic despite tuna shortage, Category: Nothing, Current Upvotes: 5"
    end
  end
end
