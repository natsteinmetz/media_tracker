class ItemStorageController < ApplicationController

  def new
    @itemStorage = ItemStorage.new
  end

  def create
    @itemStorage = ItemStorage.new(params[:itemStorage])
    if @itemStorage.save
      flash[:notice] = "Item location has been created."
      redirect_to @item
    else
      flash[:alert] = "Item location has not been created."
      render :action => "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
