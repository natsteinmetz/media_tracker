class ItemsController < ApplicationController

  before_filter :find_item, :only => [:show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    if @item.update_attributes(params[:item])
      flash[:notice] = "Item has been updated."
      redirect_to @item
    else
      flash[:alert] = "Item has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @item.destroy
    flash[:notice] = "Item has been deleted."
    redirect_to items_path
  end
end

private
  def find_item
    @item = Item.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The item you were looking for could not be found."
      redirect_to items_path
  end
