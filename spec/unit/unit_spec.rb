# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Percy Jackson', author: 'JK Rowling', published_date: '2000-06-18', price: '20')
  end

  it 'is valid author with valid attributes' do
    book1 = Book.new(title: 'Percy Jackson', author: 'JK Rowling', published_date: '2000-06-18', price: '20')
    expect(book1).to be_valid
  end

  it 'is valid author with valid attributes' do
    book2 = Book.new(title: 'Harry Potter', author: 'JK Rowling', published_date: '2000-06-18', price: '20')
    expect(book2).to be_valid
  end

  it 'is valid author with valid attributes' do
    book3 = Book.new(title: 'Amazon Rainforest', author: 'JK Rowling', published_date: '2000-06-18', price: '20')
    expect(book3).to be_valid
  end

  it 'is valid author with valid attributes' do
    book4 = Book.new(title: 'BMW', author: 'JK Rowling', published_date: '2000-06-18', price: '20')
    expect(book4).to be_valid
  end

end