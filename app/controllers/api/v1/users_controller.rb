class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({user_id: @user.id})
            render json: {
                id: @user.id,
                first_name: params[:first_name], 
                last_name: params[:last_name], 
                email: params[:email], 
                jwt: @token, 
                profile_image: params[:profile_image]
                }
        else 
            render json: {message: @user.errors.full_messages}
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.valid?
            @user.update(
                first_name: params[:first_name], 
                last_name: params[:last_name], 
                email: params[:email], 
                password: params[:password], 
                profile_image: params[:profile_image]
                )
            render json: @user
        else
            render json: {message: @user.errors.full_messages}
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: "User has been successfully deleted"}
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :profile_image)
    end
end
