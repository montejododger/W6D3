class UsersController < ApplicationController
    def index
        # #debugger
        # render plain: "I'm in the index action!"
        @users = User.all
        render json: @users
    end

    def create
        @user = User.new(params.require(:user).permit(:name, :email))
        @user.save!
        render json: @user
    end

    def show
        
        render json: params
    end


end
