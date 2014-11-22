class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def create
    order = current_user.orders.new(params.permit(:start_date, :end_date, :equipment_id))
    order.save
    redirect_to equipment_index_path  
  end
end
