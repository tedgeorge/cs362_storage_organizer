require "rails_helper"

RSpec.describe "tests the home page" do
  it "by visiting the home page and use the hyper links" do
    Capybara.current_driver = Capybara.javascript_driver
    visit '/home'
    expect(page).to have_content("Storage Organizer")
    click_on("containers")
    expect(page).to have_content("All StorageContainers")
  end
end
