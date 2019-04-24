require "rails_helper"

RSpec.describe "adding a storage container", type: :system do 
	it "allows a user to create a storage container with items" do
		visit new_storage_container_path
		fill_in "Name", with: "Summer Clothes"
		# fill_in "Items", with: "Red Dress\nNavy Shorts"
		click_on("Create Storage Container")
		visit storage_containers_path
		expect(page).to have_content("Summer Clothes")
		# expect(page).to have_content("Red Dress")
	end
	
end