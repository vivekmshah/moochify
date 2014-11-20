class EquipmentController < ApplicationController

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = current_user.equipment.new(equipment_params)
    @equipment.save
    redirect_to equipment_index_path
  end

  def edit
  end

  def update
  end

  def index
    @equipment = Equipment.where(user_id: current_user)
  end

  def destroy
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

private

  def equipment_params
    params.require(:equipment).permit(:name, :current_daily_cost, :description, :availability)
  end

end
