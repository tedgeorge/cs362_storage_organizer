require "rails_helper"

RSpec.describe "Verifies that the item index works", type: :system do
  let(:test_item) { Item.new }
  visit item_path
  expect(page).to have_content("settlers of catan")
end
