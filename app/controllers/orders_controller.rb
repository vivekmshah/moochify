class OrdersController < ApplicationController
  
  before_filter :orders_show, only: [:show]

  def index
    @orders = Order.where(user_id: current_user)
  end

  def show
    @order = Order.find(params[:id])
    @user = User.find(@order.user_id)
    @equipment = Equipment.find(@order.equipment_id)
    @reviews = Review.where(order_id: params[:id])
  end

  def create

    default_start = Date.today.to_s
    default_end = (Date.today + 7).to_s

    my_daily_cost = params[:daily_cost]
    my_equipment_id = params[:equipment_id]

    if params[:start_date].blank?
      order = current_user.orders.new(daily_cost: my_daily_cost, equipment_id: my_equipment_id, start_date: default_start, end_date: default_end)
    else
      order = current_user.orders.new(params.permit(:start_date, :end_date, :daily_cost, :equipment_id))
    end

    order.save
    redirect_to order_path(order)  

  end

private
  
  # The method below prevents a user from viewing another user's order

  def orders_show
    redirect_to home_path if current_user.id != Order.find(params[:id]).user_id
  end

end
