require 'json'

class ItemsController < ApplicationController

  def new
    @item = LineItem.new
  end

  def create
    @item = LineItem.new JSON.parse item_params

    @item.save
    redirect_to JSON.generate @item
  end

  def index
    LineItem.all
  end

  def show
    LineItem.find(params[:id])
  end

  private

  def item_params
    params.require(:line_item).permit(:name, :value, :itemId)
  end


end
