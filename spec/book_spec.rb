require 'rails_helper'

RSpec.describe Book, type: :model do
  before(:all) do
    # Load seed data once for all tests in this file
    load Rails.root.join('db/seeds.rb')
  end

  it "has test books from seed file" do
    expect(Book.count).to eq(5)
    expect(Book.first.title).to eq("test 1")
  end
end