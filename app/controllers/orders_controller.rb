class OrdersController < ApplicationController
  
  before_filter :orders_show, only: [:show]

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

private
  
  def orders_show
    redirect_to home_path if current_user.id != Order.find(params[:id]).user_id
  end

end
