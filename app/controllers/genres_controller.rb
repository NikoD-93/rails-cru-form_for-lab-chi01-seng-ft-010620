class GenresController < ApplicationController

    def index
    end 

    def new 
        @genre = Genre.new
    end 

    def create 
        @genre = Genre.new(params_for(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end 

    def show 
        @genre = Genre.find(params[:id])
    end 

    def edit 
        @genre = Genre.find(params[:id])
    end 

    def update 
       @genre = Genre.find(params[:id])
       @genre.update(params_for(:name))
       @genre.save
       redirect_to genre_path(@genre)
    end 

    private 

    def params_for(*args)
        params.require(:genre).permit(*args)
    end 

end
