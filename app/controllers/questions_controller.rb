class QuestionsController < ApplicationController
  # GET /questions
  # GET /questions.json
  before_filter :authenticate_user!, only: [:new]

  def index
    @questions = Question.all
    @random_question = @questions.shuffle.first
    @answer = Answer.new
    @question = Question.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @random_question }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @question = Question.find(params[:id])
    @answers = Question.find(params[:id]).answers
    @answer = Answer.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(params[:question])

    if @question.save
      redirect_to root_path, :notice => "Thanks pal. You're question is out in the ether"
    else
      redirect_to root_path, :notice => "Didn't work buddy"
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
  end
end
