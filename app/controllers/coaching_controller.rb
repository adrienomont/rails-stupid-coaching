class CoachingController < ApplicationController

  helper_method :coach_answer

  def ask
  end

  def answer
    @query = params[:query]
  end

  def coach_answer
    if @query.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif @query == @query.upcase
      return "I can feel your motivation!"
    elsif @query != "I AM GOING TO WORK RIGHT NOW!"
      return "I don't care, get dressed and go to work!"
    else
      return "Good"
    end
  end
end
