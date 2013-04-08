require 'test_helper'
require_relative '../factories/question_factory'

class QuestionsControllerTest < ActionController::TestCase
  include Devise::TestHelpers #Gets around 'authenticate error' - part of devise
  setup do
    @question = QuestionFactory.legit_question
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  # test "should create question" do
  #   assert_difference('Question.count') do
  #     post :create, question: { option_false: @question.option_false, option_true: @question.option_true }
  #   end

  #   assert_redirected_to question_path(assigns(:question))
  # end

  # test "should show question" do
  #   get :show, id: @question
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @question
  #   assert_response :success
  # end

  # test "should update question" do
  #   put :update, id: @question, question: { option_false: @question.option_false, option_true: @question.option_true }
  #   assert_redirected_to question_path(assigns(:question))
  # end

  # test "should destroy question" do
  #   assert_difference('Question.count', -1) do
  #     delete :destroy, id: @question
  #   end

  #   assert_redirected_to questions_path
  # end
end
