require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "new course page"	do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	get :new

  	assert_response :success
  end
  
end
