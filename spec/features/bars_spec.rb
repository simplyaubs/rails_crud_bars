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

  scenario 'User can update a bar from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a bar'
    fill_in 'Name', with: 'ATL Bar & Grill'
    fill_in 'Drink', with: 'Jack & Diet'
    click_on 'Add drink'
    expect(page).to have_content 'ATL Bar & Grill'
    expect(page).to have_content 'Jack & Diet'
    click_on 'ATL Bar & Grill'
    expect(page).to have_content 'ATL Bar & Grill'
    expect(page).to have_content 'Jack & Diet'
    click_on 'Edit'
    fill_in 'Name', with: 'Blakes'
    fill_in 'Drink', with: 'Vodka Redbull'
    click_on 'Update drink'
    expect(page).to have_content 'Blakes'
    expect(page).to have_content 'Vodka Redbull'
    expect(page).to_not have_content 'ATL Bar & Grill'
    expect(page).to_not have_content 'Jack & Diet'
  end

  scenario 'User can delete a bar from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a bar'
    fill_in 'Name', with: 'ATL Bar & Grill'
    fill_in 'Drink', with: 'Jack & Diet'
    click_on 'Add drink'
    expect(page).to have_content 'ATL Bar & Grill'
    expect(page).to have_content 'Jack & Diet'
    click_on 'ATL Bar & Grill'
    expect(page).to have_content 'ATL Bar & Grill'
    expect(page).to have_content 'Jack & Diet'
    click_on 'Delete'
    expect(page).to_not have_content 'ATL Bar & Grill'
    expect(page).to_not have_content 'Jack & Diet'
  end
end