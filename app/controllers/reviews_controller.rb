class ReviewsController < ApplicationController
  def create
    review = current_user.reviews.new(params.permit(:title, :comment, :order_id))
    review.save
    order = Order.find(params[:order_id])
    redirect_to order_path(order)
  end
end