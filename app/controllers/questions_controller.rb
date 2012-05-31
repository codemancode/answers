class QuestionsController < ApplicationController
  def index
    @questions = Question.limit(30)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to root_path, :notice => "Question was created."
    else
      render :new, :alert
    end
  end

  def show
    @question = Question.find(params[:id])
  end
end
