require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "/login route opens the login page" do
    get '/login'
    assert_response :success
  end

  test "/register route opens the login page" do
    get '/register'
    assert_response :success
  end

  test "/logout route opens the login page" do
    get '/logout'
    assert_response :redirect
    assert_redirected_to root_path
  end
end
