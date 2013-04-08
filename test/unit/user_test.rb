require 'test_helper'
require_relative '../factories/user_factory'

class UserTest < ActiveSupport::TestCase
  test "user has to enter first name" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
  end

  test "user has to enter last name" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end

  test "user has to enter profile name" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end

  test "user should have unique profile name" do
    jordan = UserFactory.jordan_user
    user = UserFactory.jordan_user
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end


  test "a user should be able to sign in with good credentials" do
    user = UserFactory.ed_user
    assert user.save
    assert user.errors.empty?
  end

end
