class StaticPagesController < ApplicationController

	def index
		@courses = Course.last(3)
	end

	def privacy

	end

	def careers

	end

	def team
	end
	
	
end
