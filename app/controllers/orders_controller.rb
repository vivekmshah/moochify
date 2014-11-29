class OrdersController < ApplicationController

  def index
    @orders = Order.where(user_id: current_user)
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    order = current_user.orders.new(params.permit(:start_date, :end_date, :equipment_id))
    order.save
    redirect_to equipment_index_path  
  end

end
