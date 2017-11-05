class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def search
    if(!!params[:search])
      users = User.all

      results = users.find_all do | user |
        user.to_s.downcase.include?(params[:search].downcase)
      end

      @users = results
    else
      @users = User.all
    end
  end

  def create
    @user = User.create(new_user_params)

    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    session[:wall_id] = params[:id]
    @user = User.find(session[:wall_id])
    @post = Post.new

    if Post.all.length > 0
      @posts = Post.all
    end
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    user = User.find(current_user.id)
    user.username = params[:user][:username]
    user.img_url = params[:user][:img_url]
    user.first_name = params[:user][:first_name]
    user.last_name = params[:user][:last_name]
    user.zipcode = params[:user][:zipcode]
    user.age = params[:user][:age]
    if user.save
      redirect_to current_user
    else
      flash[:notice] = user.errors.full_messages
      redirect_to edit_user_path(current_user)
    end
  end

  private

    def new_user_params
      params.require(:user).permit(:username, :first_name, :last_name, :age, :zipcode, :password, :password_confirmation)
    end
end
