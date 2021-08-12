class AnimalController < ApplicationController
    def index 
        @animals = Animal.all
    end

    def show
        @animal = Animal.find(params[:id])
    end

    def new
        @animal = Animal.new
    end

    def create
        @animal = Animal.create(animal_params)
        if @animal.valid?
            redirect_to animals_path
        else
            redirect_to new_animal_path
        end
    end

    # def edit
    #     @animal = Animal.find(params[:id])
    # end

    # private
    #   # Strong params:
    #   def herb_params
    #     params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    #   end
end
