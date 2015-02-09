class Instructor::LessonsController < ApplicationController

	def new
		@lesson = Lesson.new
		@section = Section.find(params[:section_id])
	end

end
