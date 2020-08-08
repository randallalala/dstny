class QuestionsController < ApplicationController

  # before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :update]
  
  before_action :set_question, only: [:show, :edit, :destroy, :update]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @comment = @question.comments.new
    @comment['user_id'] = current_user.id
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  # def question_params
  #   params.require(:question).permit(:name, :hometown, :location, :year, :age)
  # end

  def set_question
    @question = Question.find(params[:id])
  end

end
