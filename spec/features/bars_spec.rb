require 'spec_helper'

feature 'CRUD bars' do
  scenario 'User can create a list of bars' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a bar'
    fill_in 'Name', with: 'ATL Bar & Grill'
    fill_in 'Drink', with: 'Jack & Diet'
    click_on 'Add drink'
    expect(page).to have_content 'ATL Bar & Grill'
    expect(page).to have_content 'Jack & Diet'
  end
end