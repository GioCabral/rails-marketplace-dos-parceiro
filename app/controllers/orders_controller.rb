class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def new
    @feeling = Feeling.find(params[:feeling_id])
    @order = Order.new
    @order.feeling_id = params[:feeling_id]
    @order.user_id = current_user.id
  end

  def create
    @feeling = Feeling.find(params[:feeling_id])
    @order = Order.new(set_params)
    @order.feeling_id = params[:feeling_id]
    @order.user_id = current_user.id
    decrement_stock = set_params["total_price"].to_i

    if @order.save
      @feeling.update(percentage: @feeling.percentage.to_i - decrement_stock)
      redirect_to orders_path
    else
      render :new, unprocessable_entity: true
    end
  end

  private

  def set_params
    params.require(:order).permit(:total_price)
  end
end
