class Instructor::SectionsController < ApplicationController
	before_action :authenticate_user!
	
	def new
		@section = Section.new
		@course = Course.find(params[:course_id])
	end

	def create
		@course = Course.find(params[:course_id])
    @section = @course.sections.create(section_params)

		if @section.valid?
			redirect_to instructor_course_path(@course)
		else
			render :new, :status => :unprocessable_entity
		end
	end

	private

	def section_params
		params.require(:section).permit(:title)
	end
end
