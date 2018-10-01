class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(new_user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(edit_user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end
  
private
  def new_user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_mode)
  end
  
  def edit_user_params
    params.require(:user).permit(:name, :email, :current_mode, :real_estate_company_i, :phone_number, :preferred_contact)
  end
end
