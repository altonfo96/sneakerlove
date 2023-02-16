class UsersController < ApplicationController
   
    def index
        render json: User.all
    end

    def show
        user = User.find_by!(id: params[:id])
        render json: user
    end

    def update 
        user = User.find_by!(email: params[:email], password: params[:password])
        render json: user
    end
    def create
        user = User.create(id: params[:id], email: params[:email], password: params[:password], user_name: params[:user_name])
        render json: user
    end

    def destroy
        user = User.find_by!(id: params[:id])
        user.delete
        head :no_content
    end
end
