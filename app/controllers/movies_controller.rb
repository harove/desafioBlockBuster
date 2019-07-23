


class MoviesController < ApplicationController
   before_action :find_movie, only: [:show, :edit, :update, :destroy]

   def index
      @movies=Movie.all
   end

   def new
      @movie = Movie.new
   end   

   def create 
      @movie = Movie.new(movie_params)
      @movie.save
      redirect_to movies_path
   end

   def show
      
   end 

   def edit
      
   end

   def update
      
      @movie = @movie.update(movie_params)
      redirect_to movies_path
   end

   def destroy
      
      @movie.destroy
      redirect_to movies_path
   end

private

   def find_movie
      @movie = Movie.find(params[:id])
   end
   
   def movie_params
      params.require(:movie).permit(:name, :year, :favorite)
   end
end



