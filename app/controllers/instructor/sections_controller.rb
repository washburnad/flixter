class Instructor::SectionsController < ApplicationController
	def new
		@section = Section.new
		@course = Course.find(params[:course_id])
	end
end
