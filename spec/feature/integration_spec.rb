# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid Title' do
    visit new_book_path
    fill_in 'Title', with: 'Harry'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2000-06-18'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry')
  end


  scenario 'valid Author' do
    visit new_book_path
    fill_in 'Title', with: 'Harry'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2000-06-18'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'Harry'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2000-06-18'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('20')
  end

  scenario 'valid date' do
    visit new_book_path
    fill_in 'Title', with: 'Harry'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2000-06-18'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2000-06-18')
  end

end