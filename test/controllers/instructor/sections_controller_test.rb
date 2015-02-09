require 'test_helper'

class Instructor::SectionsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "section new"	do
  	@course = FactoryGirl.create(:course)
    create_and_log_in_user!
  	get :new, :course_id => @course.id
    assert_response :success
  end


end
