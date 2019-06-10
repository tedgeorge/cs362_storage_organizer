require "rails_helper"

RSpec.describe "Listing all the items", type: :system do
  let(:test_item) { Item.new }
  it "lists all the items" do
    visit items_path
    pending(expect(page).to have_content("settlers of catan"))
  end
end
