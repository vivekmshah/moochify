class OrdersController < ApplicationController

  # IMPORTANT: we need to add something that allows ONLY
  # the single user to view their own orders

  def index
    @orders = Order.where(user_id: current_user)
  end

  def show
    @order = Order.find(params[:id])
    @user = User.find(@order.user_id)
    @equipment = Equipment.find(@order.equipment_id)
  end

  def create
    order = current_user.orders.new(params.permit(:start_date, :end_date, :daily_cost, :equipment_id))
    order.save
    redirect_to order_path(order)  
  end

end
