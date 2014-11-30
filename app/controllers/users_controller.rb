class UsersController < ApplicationController

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

end
