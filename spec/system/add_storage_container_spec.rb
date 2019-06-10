require "rails_helper"


RSpec.describe "adding a storage container", type: :system do
	it "allows a user to create a storage container with items" do
		visit new_storage_container_path
		fill_in "Name", with: "Summer Clothes"
		fill_in "Items", with: "Red Dress\nNavy Shorts"
		click_on("Create Storage Container")
		visit storage_containers_path
		expect(page).to have_content("Summer Clothes")
	end

	it "does not allow a user to create a storage container without a name" do
		visit new_storage_container_path
		fill_in "Name", with: ""
		click_on("Create Storage Container")
		expect(page).to have_selector(".new_storage_container")
	end
end
