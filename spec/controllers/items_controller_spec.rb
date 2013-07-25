require 'spec_helper'

describe ItemsController do
  it "displays an error for a missing item" do
    get :show, :id => "not-here"
    response.should redirect_to(items_path)
    flash[:alert].should == "The item you were looking for could not be found."
  end
end

