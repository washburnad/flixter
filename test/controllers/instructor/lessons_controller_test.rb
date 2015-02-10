require 'test_helper'

class Instructor::LessonsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "lesson new" do
  	@section = FactoryGirl.create(:section)
  	@lesson = FactoryGirl.create(:lesson)
  	create_and_log_in_user!

  	get :new, :section_id => @section.section_id

  	assert_response :success
  end
end
