class MovieActorsController < ApplicationController

  def add_actor
    movie = Movie.find(params[:id])
    binding.pry
  end

end
