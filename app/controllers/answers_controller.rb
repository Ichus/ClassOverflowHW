class AnswersController < ApplicationController
  respond_to :html

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
    respond_with @question, @answer
  end

  def create
    @question = Question.find params[:question_id]
    @answer = @question.answers.build(answer_params)
    @answer.save
    flash[:notice] = 'Answer Added'
    respond_with @answer, location: question_path(id: @question.id)
  end

  private

  def answer_params
    params.require(:answer).permit :answerer, :answer
  end
end
