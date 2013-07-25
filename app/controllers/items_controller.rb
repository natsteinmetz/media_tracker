class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      flash[:notice] = "Item has been created."
      redirect_to @item
    else
      # nothing yet
    end
  end

  def show
    @item = Item.find(params[:id])
  end

end
