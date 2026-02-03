require 'rails_helper'

RSpec.describe Book, type: :model do
  it "has seeded books in the test database" do
    expect(Book.count).to be >= 5
  end
end
