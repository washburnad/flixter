require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  
  test "course new page"	do
    create_and_log_in_user!
  	get :new
    assert_response :success
  end

  test "course show page" do
  	create_and_log_in_user!
    course = FactoryGirl.create(:course, user_id: @user.id)
  	get :show, :id => course.id

  	assert_response :success
  end

  # Trying to test that page redirects to sign in if attempt is made to 
  # create a course and no user is signed in.  Triggering uncaught throw: warden
  
  test "course new page redirect to sign in" do
    
    get :new

    assert_redirected_to new_user_session_path
  end
  
end
