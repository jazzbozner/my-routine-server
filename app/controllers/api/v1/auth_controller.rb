class Api::V1::AuthController < ApplicationController
  def login 
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      token = issue_token(@user)
      render json: {
        id: @user.id, 
        email: @user.email, 
        first_name: @user.first_name, 
        last_name: @user.last_name, 
        jwt: token
      }
    else
      render json: { error: 'User not found'}, status: 401
    end
  end

  def user_authorized
    @user = User.find_by(id: user_id)
    if logged_in?
      render json: @user
    else
      render json: { error: 'User not found'}, status: 401
    end
  end

end
