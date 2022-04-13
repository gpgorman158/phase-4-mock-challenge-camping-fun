class CampersController < ApplicationController

    def index
        render json: Camper.all, except: [:activities], status: :ok
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, status: :ok
    rescue ActiveRecord::RecordNotFound
        render json: {error: "Camper not found"}, status: :not_found
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    private
    def camper_params
        params.permit(:name, :age)
    end

end
