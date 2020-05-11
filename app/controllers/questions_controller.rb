class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.downcase == 'hello'
      @answer = "I don't care, get dressed and go to work!"
    elsif @question.downcase == "i am going to work"
      @answer = "great"
    elsif @question.downcase.end_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
