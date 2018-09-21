class OrdersController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    shop = Shop.find(params[:shop_id])
    order = shop.orders.create(order_params)

    if params[:product_id] and Product.find(params[:product_id])
      order.products.push Product.find(params[:product_id])
    end

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

  def get_items
    order = Order.find(params[:id])
    render json: order.line_items
  end


  private

  def order_params
    params.permit(:order)
  end
end
