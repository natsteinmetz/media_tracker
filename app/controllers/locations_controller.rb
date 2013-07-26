class LocationsController < ApplicationController

before_filter :find_location, :only => [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params[:location])
    if @location.save
      flash[:notice] = "Location has been created."
      redirect_to @location
    else
      flash[:alert] = "Location has not been created."
      render :action => "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @location.update_attributes(params[:location])
      flash[:notice] = "Location has been updated."
      redirect_to @location
    else
      flash[:alert] = "Location has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @location.destroy
    flash[:notice] = "Location has been deleted."
    redirect_to locations_path
  end

private
  def find_location
    @location = Location.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The location you were looking for could not be found."
      redirect_to locations_path
  end
end

