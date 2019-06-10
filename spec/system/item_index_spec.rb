require "rails_helper"

RSpec.describe "Listing all the items", type: :system do
  it "lists all the items" do
    visit items_path
    pending("expect settlers of catan")
    expect(page).to have_content("settlers of catan")
  end
end
