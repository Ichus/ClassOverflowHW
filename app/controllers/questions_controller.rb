class QuestionsController < ApplicationController
  respond_to :html
  def index
    @questions = Question.all
    respond_with @questions
  end

  def show
    @question = Question.find(params[:id])
    @question_answers = Answer.where(question_id: @question.id).order(created_at: :asc)
  end

  def new
    @question = Question.new
    respond_with @question
  end
#
  def create
    @question = Question.new(question_params)
    @question.save
    flash[:notice] = 'Question Added'
    respond_with @question, location: questions_path
    # if @question.save
    #   redirect_to questions_path, notice: 'Question Added'
    # else
    #   render :new
    # end
  end

  private
  def question_params
    params.require(:question).permit :title, :content
  end
end
