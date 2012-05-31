class AnswersController < ApplicationController
  def create
    @answer = Answer.new(params[:answer])
    if @answer.save
      redirect_to question_path(params[:answer][:question_id]), :notice => "Answer saved."
    else
      flash[:alert] = "Cannot save answer."
    end
  end
end
