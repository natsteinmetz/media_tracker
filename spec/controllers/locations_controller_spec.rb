require 'spec_helper'

describe LocationsController do
  it "displays an error for a missing location" do
    get :show, :id => "not-here"
    response.should redirect_to(locations_path)
    flash[:alert].should == "The location you were looking for could " +
    "not be found."
  end
end

