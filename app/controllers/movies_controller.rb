class MoviesController < ApplicationController

  def show
    @movie = Movie.find(params[:id])
    actor_age = Actor.average(:age)
  end
end
