class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:answer]
    if @ask == 'I am going to work'
       @coach_answer = 'Great!'
    elsif @ask.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
