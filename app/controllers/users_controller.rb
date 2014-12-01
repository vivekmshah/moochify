class UsersController < ApplicationController

  # IMPORTANT: go to the bottom and verify that no bugs
  # will be encountered with the 'user_edits' method
  before_filter :user_edits, only: [:edit, :update]
  skip_before_filter :authorize, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar))
    @user.save
    session[:user_id] = @user.id
    id = User.last[:id]
    redirect_to equipment_index_path
  end

  def edit  
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_user_path
    else
      render 'edit'
    end
    @user.save
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])

  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :address_1, :address_2, :city, :state, :zip, :bio, :avatar)
  end

  def user_edits
    redirect_to home_path if current_user != User.find(params[:id])
  end

end
