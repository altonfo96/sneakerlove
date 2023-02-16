class SneakersController < ApplicationController

    def index
        render json: Sneaker.all
    end

    def show
        sneaker = Sneaker.find_by!(id: params[:id])
        render json: sneaker
    end

    def update 
        sneaker = Sneaker.find_by!(id: params[:id])
        render json: sneaker
    end
    def create
        sneaker = Sneaker.create(id: params[:id], price: params[:price], image: params[:image], name: params[:name])
        render json: sneaker
    end

    def destroy
        sneaker = Sneaker.find_by!(id: params[:id])
        sneaker.delete
        head :no_content

    end
end
