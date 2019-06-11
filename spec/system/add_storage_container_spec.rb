require "rails_helper"


RSpec.describe "adding a storage container and items", type: :system do
  Capybara.ignore_hidden_elements = false;

	it "allows a user to create a storage container with one item, and perform various site functions with it" do
		Capybara.current_driver = Capybara.javascript_driver
		visit new_storage_container_path
		fill_in "Name", with: "Summer Clothes"
		click_on("+")
		fill_in "storage_container_items_attributes_0_name", with: "Red Dress"
		click_on("Create Storage Container")
		visit storage_containers_path
		expect(page).to have_content("Summer Clothes")
		fill_in 'Search', with: "None"
		click_on('Submit')
		expect(page).to_not have_content("Summer Clothes")
		fill_in 'Search', with: "Summer Clothes"
		click_on('Submit')
		expect(page).to have_content("Summer Clothes")
		visit items_path
		expect(page).to have_content("Red Dress")
		fill_in 'Search', with: "None"
		click_on('Submit')
		expect(page).to_not have_content("Red Dress")
		fill_in 'Search', with: "Red Dress"
		click_on('Submit')
		expect(page).to have_content("Red Dress")
	end

  it "allows a user to create a storage container with multiple items" do
    Capybara.current_driver = Capybara.javascript_driver
		visit new_storage_container_path
		fill_in "Name", with: "Summer Clothes"
    click_on("+")
		fill_in "storage_container_items_attributes_0_name", with: "Red Dress"
    click_on("+")
    fill_in "storage_container_items_attributes_1_name", with: "White Dress"
		click_on("Create Storage Container")
		visit storage_containers_path
		expect(page).to have_content("Summer Clothes")
		expect(page).to have_content("Red Dress")
		expect(page).to have_content("White Dress")
    visit items_path
		expect(page).to have_content("Red Dress")
		expect(page).to have_content("White Dress")
		fill_in 'Search', with: "White Dress"
		click_on('Submit')
		expect(page).to have_content("White Dress")
		expect(page).to_not have_content("Red Dress")
	end

	it "does not allow a user to create a storage container without a name" do
    Capybara.current_driver = Capybara.javascript_driver
		visit new_storage_container_path
		fill_in "Name", with: ""
		click_on("Create Storage Container")
		expect(page).to have_selector(".new_storage_container")
	end

  it "allows containers to be edited" do
    Capybara.current_driver = Capybara.javascript_driver
    visit new_storage_container_path
		fill_in "Name", with: "Test Clothes"
    click_on("+")
    fill_in "storage_container_items_attributes_0_name", with: "Test Dress"
    click_on("Create Storage Container")
    visit storage_containers_path
    click_on("Edit")
    expect(page).to have_selector("input[value='Test Clothes']")
    expect(page).to have_selector("input[value='Test Dress']")
  end

  it "allows adding more items to a container" do
    Capybara.current_driver = Capybara.javascript_driver
    visit new_storage_container_path
		fill_in "Name", with: "Test Clothes"
    click_on("+")
    fill_in "storage_container_items_attributes_0_name", with: "Test Dress"
    click_on("Create Storage Container")
    visit storage_containers_path
    click_on("Edit")
    click_on("+")
    fill_in "storage_container_items_attributes_1_name", with: "Test Skirt"
    click_on("Update Storage Container")
    expect(page).to have_content("Test Skirt")
  end

  it "allows containers to be deleted" do
    Capybara.current_driver = Capybara.javascript_driver
    visit new_storage_container_path
		fill_in "Name", with: "Test Clothes"
    click_on("+")
    fill_in "storage_container_items_attributes_0_name", with: "Test Dress"
    click_on("Create Storage Container")
    visit storage_containers_path
    click_on("Delete")
    expect(page).to_not have_content("Test Clothes")
    expect(page).to_not have_content("Test Dress")
  end
end
