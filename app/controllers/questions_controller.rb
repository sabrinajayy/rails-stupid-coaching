class QuestionsController < ApplicationController
  def answer
    @answer = params[:your_message]
    if @answer.include?("I am going to work right now!") || @answer.include?("I AM GOING TO WORK RIGHT NOW!")
      exit
    elsif @answer.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
      return @response
    else
      @response = "I don't care, get dressed and go to work!"
      return @response
    end
  end

  def ask
  end
end
