class SessionsController < ApplicationController
  def create
    login = User.find_by(user_name: params[:user_name])
    if login.authenticate(params[:password])
      session[:user_id] = login.id
      render json: login
    else
      render json: {error: "denied"}, status: :unauthorized
    end
  end

  def destroy
    if session[:user_id]
      session.delete :user_id
    else
      render json: { errors: "invalid authorization"}, status: :unauthorized

  end
end
