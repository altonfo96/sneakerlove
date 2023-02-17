class FavoritesController < ApplicationController


    def index
        render json: Favorite.all
    end

    def show
        favorite = Favorite.find_by!(id: params[:id])
        render json: favorite, serializer: FavoriteSerializer
    end

    def update 
        favorite = Favorite.find_by!(id: params[:id])
        render json: favorite
    end
    def create
        favorite = Favorite.create(user_id: params[:user_id], sneaker_id: params[:sneaker_id])
        render json: favorite
    end

    def destroy
        favorite = Favorite.find_by!(id: params[:id])
        favorite.delete
        head :no_content
    end
end
