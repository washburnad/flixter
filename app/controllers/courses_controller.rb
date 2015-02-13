class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
	end

	private



	helper_method :current_enrollment
	def current_enrollment
	
		@current_enrollment = current_user.enrollments.where( course_id: @course.id ).first
	


	end
end
