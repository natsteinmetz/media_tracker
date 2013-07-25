require 'spec_helper'

feature 'Creating Item' do
  scenario 'can create an item' do
    visit '/'
    click_link 'New Item'
    fill_in 'Name', :with => 'Test Item'
    fill_in 'Type', :with => 'Book'
    click_button 'Create Item'
    page.should have_content('Item has been created.')
  end
end

