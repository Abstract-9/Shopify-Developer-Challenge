class ShopsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    shop = Shop.new(shop_params)

    shop.save
    render json: shop
  end

  def index
    render json: Shop.all
  end

  def show
    render json: Shop.find(params[:id])
  end

  def edit
    shop = Shop.find(params[:id])
    shop.update(shop_params)

    render json: shop
  end




  private

  def shop_params
    params.require(:shop).permit(:name)
  end
end
