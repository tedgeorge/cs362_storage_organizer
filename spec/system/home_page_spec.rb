require "rails_helper"

RSpec.describe "tests the home page" do
  it "by visiting the home page and use the hyper links" do
    visit home_path
    expect(page).to have_content("Storage Organizer")
    click_on("containers")
    expect(page).to have_content("Storage Containers")
  end
end
