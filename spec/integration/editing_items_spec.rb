require 'spec_helper'

feature "Editing Items" do

  before do
    Factory(:item, :name => "Test Item")
    visit '/'
    click_link "Test Item"
    click_link "Edit Item"
  end

  scenario "Updating an item" do
    fill_in "Name", :with => "Test Item beta"
    click_button "Update Item"
    page.should have_content("Item has been updated.")
  end

  scenario "Updating an item with invalid attributes is bad" do
    fill_in "Name", :with => ""
    click_button "Update Item"
    page.should have_content("Item has not been updated.")
  end

end

