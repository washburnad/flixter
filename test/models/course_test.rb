require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  include Devise::TestHelpers
  # test "the truth" do
  #   assert true
  # end

  setup do
  	@user = FactoryGirl.create(:user)
  	sign_in @user

  end

  # getting undefined method 'env' for nil:NilClass
  
  # test "should create course" do
  #   course = Course.new(:title => 'My course title', :description => 'My course description', :cost => 29.99 )

  # 	assert true
  	
  # end

end
