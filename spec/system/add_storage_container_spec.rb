require "rails_helper"


RSpec.describe "adding a storage container and items", type: :system do
	it "allows a user to create a storage container with one item" do
		visit new_storage_container_path
		fill_in "Name", with: "Summer Clothes"
		fill_in "Items", with: "Red Dress"
		click_on("Create Storage Container")
		visit storage_containers_path
		expect(page).to have_content("Summer Clothes")
		visit items_path
		expect(page).to have_content("Red Dress")
    
    pending("Search which should be in its own test")
		fill_in "Search", with: "Red Dress"
		expect(page).to have_content("Red Dress")
	end

  it "allows a user to create a storage container with multiple items" do
		visit new_storage_container_path
		fill_in "Name", with: "Summer Clothes"
		fill_in "Items", with: "Red Dress"
    click_on("+")
    fill_in "Item 2", with: "White Dress"
		click_on("Create Storage Container")
		visit storage_containers_path
		expect(page).to have_content("Summer Clothes")
		visit items_path
		expect(page).to have_content("Red Dress")
    
    pending("Search which should be in its own test")
		fill_in "Search", with: "Red Dress"
		expect(page).to have_content("Red Dress")
	end
  
	it "does not allow a user to create a storage container without a name" do
		visit new_storage_container_path
		fill_in "Name", with: ""
		click_on("Create Storage Container")
		expect(page).to have_selector(".new_storage_container")
	end
  
  it "allows containers to be edited" do
    visit new_storage_container_path
		fill_in "Name", with: "Test Clothes"
    fill_in "Items", with: "Test Dress"
    click_on("Create Storage Container")
    visit storage_containers_path
    click_on("Edit")
    expect(page).to have_selector("input[value='Test Clothes']")
    expect(page).to have_selector("input[value='Test Dress']")
  end
  
  it "allows containers to be deleted" do
    visit new_storage_container_path
		fill_in "Name", with: "Test Clothes"
    fill_in "Items", with: "Test Dress"
    click_on("Create Storage Container")
    visit storage_containers_path
    click_on("Delete")
    expect(page).to_not have_content("Test Clothes")
    expect(page).to_not have_content("Test Dress")
  end
end
