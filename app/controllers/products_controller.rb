class ProductsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    shop = Shop.find(params[:shop_id])
    product = shop.products.create(product_params)

    render json: product
  end

  def index
    render json: Product.all
  end

  def show
    render json: Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
      render json: product
    else
      render plain: false
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    redirect_to index
  end

  private

  def product_params
    params.require(:product).permit(:name, :shop)
  end
end
