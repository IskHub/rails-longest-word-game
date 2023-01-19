class GamesController < ApplicationController
  require "open-uri"
  require "json"
  def new
    @letters = [*('A'..'Z')].sample(10)
  end

  def score
  @word = params[:word]
  @url = "https://wagon-dictionary.herokuapp.com#{@word}"
  @dictionary = URI.open(@url).read
  api = JSON.parse(@dictionary)
  puts @user["it is a word"]
  end
end
