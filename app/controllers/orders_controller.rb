class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def create
    
    # eq_id = params.permit(:equipment_id)["equipment_id"]
    # equipment = Equipment.find(equipment_id)
    @order = current_user.orders.new(params.permit(:start_date, :end_date, :equipment_id))
    
    # raise equipment.inspect

    @order.save
    redirect_to equipment_index_path  
  end
end
