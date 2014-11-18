class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
    @user.save 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :address_1, :address_2, :city, :state, :zip, :bio)
  end

end
