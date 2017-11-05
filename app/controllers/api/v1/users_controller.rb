module Api::V1
  class UsersController < ApplicationController
    def index
      users = User.all

      render json: users
    end

    def show
      user = User.find(params['id'])
      
      render json: user
    end

    def create
      binding.pry
      puts 'create hit'
      @user = User.new(user_params)

      if @user.save
        jwt = Auth.encrypt({ user_id: @user.id })
        render json: { jwt: jwt, user: @user }
      else
        render json: {
            error: "Sign Up Failed",
            status: 404
          }, status: 404
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :first_name, :last_name, :password, :password_confirmation)
    end
end
