class EquipmentController < ApplicationController

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save
    id = Equipment.last[:id]
    redirect_to equipment_path(id)
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

private

  def equipment_params
    params.require(:equipment).permit(:name, :current_daily_cost, :description, :availability, :user_id)
  end

end
