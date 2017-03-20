class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @coach_answer = coach_answer(@question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    return "" unless your_message
    motivation = your_message[-1] == "!" ? "I can feel your motivation! " : ""
    if your_message[-1] == "?"
      return motivation + "Silly question, get dressed and go to work!"
    else
      return motivation + "I don't care, get dressed and go to work!"
    end
  end
end
