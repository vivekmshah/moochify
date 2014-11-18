class EquipmentsController < ApplicationController

  def new
  end

  def create
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
  end

private

  def equipment_params
    params.require(:equipment).permit(:name, :current_daily_cost, :description, :availability)
  end

end
