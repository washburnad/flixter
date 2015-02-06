require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
  	@user = FactoryGirl.create(:user)
    sign_in @user
  end

  test "course new page"	do
  	# user = FactoryGirl.create(:user)
  	# sign_in user
  	get :new

  	assert_response :success
  end

  test "course show page" do
  	# user = FactoryGirl.create(:user)
  	# sign_in user
  	course = FactoryGirl.create(:course)

  	get :show, :id => course.id

  	assert true
  end

  # Trying to test that page redirects to sign in if attempt is made to 
  # create a course and no user is signed in.  Triggering uncaught throw: warden
  #
  # test "course new page redirect to sign in" do
  #   sign_out @user

  #   get :new

  #   assert_redirected_to =
  # end
  
end
