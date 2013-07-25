require 'spec_helper'

feature 'Creating Item' do

  before do
    visit '/'
    click_link "New Item"
  end

  scenario 'can create an item' do
    fill_in 'Name', :with => 'Test Item'
    fill_in 'Type', :with => 'Book'
    click_button 'Create Item'
    page.should have_content('Item has been created.')

    item = Item.find_by_name('Test Item')
    page.current_url.should == item_url(item)
    title = "Test Item - Items - Media Tracker"
    find("title").should have_content(title)
  end

  scenario "can not create an item without a name" do
    click_button "Create Item"
    page.should have_content("Item has not been created.")
    page.should have_content("Name can't be blank")
    page.should have_content("Type can't be blank")
  end
end

