class UsersController < ApplicationController

  def new
    @user = User.new
    @users = User.all 
  end

  def create
    @user = User.new(params[user_params])
    if @user.save
      redirect_to new_user_path
    else
      render :json => @user.errors, :status => :unprocessable_entity

    end

  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json:user
  end

  def index
    @users =  User.all
    render :index
  end

  def show
    render :json => User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(user_params)
      render :json => user
    else
      render :json => user.errors, :status => :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address)
  end
end
