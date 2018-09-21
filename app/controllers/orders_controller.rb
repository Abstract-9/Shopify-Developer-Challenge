class OrdersController < ApplicationController

  def create
    shop = Shop.find(params[:shop_id])

    order = shop.orders.create(order_params)

    render json: order
  end

  def index
    render json: Order.all
  end

  def show
    render json: Order.find(params[:id])
  end

  def edit
    order = Order.find(params[:id])

    if order.update(order_params)
      render json: order
    else
      render plain: false
    end
  end




  private

  def order_params
    params.require(:order).require(:shop)
  end
end
