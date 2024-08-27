class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('a'..'z').to_a.sample }
  end

  def score
    @query = params[:letter]

    if @query.nil?
      @result = "Please write a word!"
    elsif @query == @letters
      @result = "Great!"
    elsif @query.end_with?("?")
      @result = "Silly question, get dressed and go to work!"
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
