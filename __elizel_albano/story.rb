########################   Teddit   ######################
#  Part 1
#
#  Using story_spec.rb make the following happen
#   - Story can now accept a hash as parameters
#   - Make a method to return a story object as a hash
#
##########################################################


class Story
  attr_accessor :title, :category
  def initialize(options)
    @title = options[:title]
    @category = options[:category]
  end

  def upvotes
    @upvotes = 1
    if @title.downcase.include?("cat")
      @upvotes = @upvotes * 5
    elsif @title.downcase.include?("bacon")
      @upvotes = @upvotes * 8
    end

    if @category.downcase.include?("food")
      @upvotes = @upvotes * 3
    end

    if @title.downcase.include?("bacon!") && @category.downcase.include?("food")
      @upvotes = @upvotes * 1
    end

    if @title.include?("CaT") && @category.include?("foodIe")
      @upvotes = @upvotes * 1
    end

    @upvotes
  end

  def to_hash
  { title: title, category: category, upvotes: upvotes}
  end

  def to_s
    "#{title}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
  end
end
