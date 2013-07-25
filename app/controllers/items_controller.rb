class ItemsController < ApplicationController

  def index
    @items = Item.all
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
      flash[:alert] = "Item has not been created."
      render :action => "new"
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      flash[:notice] = "Item has been updated."
      redirect_to @item
    else
      flash[:alert] = "Item has not been updated."
      render :action => "edit"
    end
  end

end

