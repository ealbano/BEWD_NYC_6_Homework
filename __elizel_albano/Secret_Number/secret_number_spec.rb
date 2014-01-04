require "minitest/autorun"
require_relative 'secret_number'

describe SecretNumber do
  it "initializes defaults guesses to three and allows you to pass secret number" do
    sn = SecretNumber.new(4)
    sn.guesses.must_equal 3
    sn.number.must_equal 4
  end

  it "tells you you've guessed too high" do
    sn = SecretNumber.new(5)
    sn.correct_number?(6).must_equal false
  end

  it "tells you when you've guessed too low" do
    sn = SecretNumber.new(6)
    sn.correct_number?(1).must_equal false
  end

  it "congratulates you on the right answer" do
    sn = SecretNumber.new(2)
    sn.correct_number?(2).must_equal true
  end

  it "has a greeting" do
    sn = SecretNumber.new(2)
    sn.greeting.must_equal "Welcome to the secret number game!"
  end

  it "you have three guesses to win the game" do
    sn = SecretNumber.new(2)
    sn.starting_instructions.must_equal "You have three guesses to guess the right number from 1 to 10."
  end
end
