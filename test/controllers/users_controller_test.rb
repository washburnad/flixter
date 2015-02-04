require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "new user registration path" do
    get new_user_registration_path

    assert_response :success
  end

  test "new user session path" do
  	get new_user_session_path

  	assert_response :success

  end


end
