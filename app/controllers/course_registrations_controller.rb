class CourseRegistrationsController < ApplicationController

	def new
		@courses = Course.all
	end

	def create
		
	end
end
