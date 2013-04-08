class AnswersController < ApplicationController

    def new
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def create
    redirect_to user_omniauth_authorize_path(:facebook)  and return unless user_signed_in?
    @answer = Answer.new
    @answer.answer = params[:answer]
    @answer.user_id = params[:user_id]
    @answer.question_id=params[:question_id]
    if @answer.save
      redirect_to question_path(params[:question_id])
    end
  end


end
