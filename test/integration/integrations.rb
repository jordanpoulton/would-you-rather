require 'test_helper'
require_relative '../factories/question_factory'
require_relative '../factories/user_factory'

class IntegrationsTest < ActionDispatch::IntegrationTest
  setup do
    @question = QuestionFactory.legit_question
    @user = UserFactory.jordan_user
  end

  def login_user #THIS IS CAPYBARA SO DOESN'T WORK - I COULDN'T GET CAPYBARA GEM TO LOAD!!
    visit '/login'
    fill_in 'first_name', :with => @user.first_name
    fill_in 'last_name', :with => @user.last_name
    fill_in 'profile_name', :with => @user.profile_name
    fill_in 'email', :with => @user.email
    fill_in 'password', :with => @user.password
    fill_in 'password_confirmation', :with => @user.password_confirmation
  end


  test 'user should be redirected if trying to write a new question without logging in' do
    get '/questions/new'
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test 'should render the new question page when user is logged in' do
    login_user #NEED TO ASK EVGENY HOW TO LOGIN A USER!!!
    get '/questions/new'
    assert_response :success
  end

end
