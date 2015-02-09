require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  # include Devise::TestHelpers
  # include Warden::Test::Helpers  
  # Warden.test_mode!

  # def teardown                                         
  #   Warden.test_reset!                                 
  # end 
  
  setup do
  	@user = FactoryGirl.create(:user)
    sign_in @user
  end

  test "course new page"	do
  	get :new

  	assert_response :success
  end

  test "course show page" do
  	course = FactoryGirl.create(:course)
  	get :show, :id => course.id

  	assert_response :success
  end

  # Trying to test that page redirects to sign in if attempt is made to 
  # create a course and no user is signed in.  Triggering uncaught throw: warden
  
  test "course new page redirect to sign in" do
    sign_out @user
    # @request.env["devise.mapping"] = Devise.mappings[:course]
    
    get :new

    assert_redirected_to new_user_session_path
  end
  
end
