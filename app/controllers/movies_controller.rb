class MoviesController < ApplicationController

  def show
    @movie = Movie.find(params[:id])
  end

  def add_actor
    
    movie = Movie.find(params[:movie_id])
  end
end
