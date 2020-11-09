class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @text = params['question_text']
    if @text.downcase.include? "hello"
      @answer = 'Hello there!'
    elsif @text.downcase.include? "time"
      time = Time.now
      @answer = "It is #{time.hour}"
    else @answer = "not a valid question"
    end
  end

end
