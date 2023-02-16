class UsersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_json_invalid
    def index
        render json: User.all
    end

    def show
        user = User.find_by!(id: params[:id])
        render json: user
    end

    def update 
        user = User.find_by!(email: params[:email], password: params[:password], user_name: params[:user_name])
        render json: user
    end
    def create
        user = User.create!(id: params[:id], email: params[:email], password: params[:password], user_name: params[:user_name])
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def destroy
        user = User.find_by!(id: params[:id])
        user.delete
        head :no_content
    end

    def render_json_invalid
        render json: { error: "missing vital input"}, status: invalid
    end
end
