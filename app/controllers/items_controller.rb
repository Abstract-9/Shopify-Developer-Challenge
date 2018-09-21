class ItemsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    product = Product.find(params[:product_id])
    item = product.line_items.create(item_params)
    render json: item
  end

  def index
    render json: LineItem.all
  end

  def show
    LineItem.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :value, :product)
  end


end
