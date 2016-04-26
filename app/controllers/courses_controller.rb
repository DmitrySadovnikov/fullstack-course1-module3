class CoursesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'Duke' #http://localhost:3000/courses/index?looking_for=python or ...
  	@courses = Coursera.for(@search_term)
  end
end


