class PlantsController < ApplicationController
    # POST /plants
    def index
        plants = Plant.all
        render json: plants
    end
    

     def show
    # params[:id] refers to the dynamic part of our route, defined by :id
    
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end 
  # other controller actions here

  private
  # all methods below here are private

  def plant_params
    params.permit(:name, :image, :price)
  end
  
end
