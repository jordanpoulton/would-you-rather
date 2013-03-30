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
    jordan.save
    user = UserFactory.jordan_user
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end

  test "a user should have a profile name without spaces" do
    user = User.new
    user.profile_name = "Invalid Profile name"
    assert !user.save
    assert !user.errors[:profile_name].empty?
    assert user.errors[:profile_name].include?("Profile can't have spaces")
  end

end
