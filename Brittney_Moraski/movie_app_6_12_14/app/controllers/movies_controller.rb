class MoviesController < ApplicationController
	def index
		if params[:q]
		@movies = Movie.search_movie(params[:q])
		else
		@movies = Movie.all
		end
	end
end