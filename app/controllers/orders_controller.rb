class OrdersController < ApplicationController
def index
    @orders = Order.where(user_id: current_user.id)
  end

  def new
    @feeling = Feeling.find(params[:feeling_id])
    @order = Order.new(total_price: @feeling.price)
    @order.feeling_id = params[:feeling_id]
    @order.user_id = current_user.id
  end

  def create
    @feeling = Feeling.find(params[:feeling_id])
    @order = Order.new(total_price: @feeling.price)
    @order.feeling_id = params[:feeling_id]
    @order.user_id = current_user.id

    if @order.save
      redirect_to orders_path
    else
      render :new, unprocessable_entity: :true
    end
  end
end
