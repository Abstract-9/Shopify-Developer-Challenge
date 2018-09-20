class ItemsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def new
    @item = LineItem.new
  end

  def create
    @item = LineItem.new(item_params)

    @item.save!
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
