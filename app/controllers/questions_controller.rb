class QuestionsController < ApplicationController

  # The controller will need to read the question from params
  # and compute an instance variable @answer for the view to display.

  def ask
    @question = params[:ask]
    @question
  end

  def answer
    @question = ask()

    if @question == "I am going to work"
      @answer = "Great"
    elsif @question.end_with? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
