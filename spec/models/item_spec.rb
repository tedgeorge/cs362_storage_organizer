require "rails_helper"

RSpec.describe Item do 
	let(:test_item) { Item.new }

	it "considers a new item packed" do
    # test_item.packed = true;
    test_item.mark_as_packed
		expect(test_item).to be_packed
	end

	it "allows us to delete an item" do
		test_item.delete
		expect(test_item).not_to be_packed
	end

  it "considers an item to have a name of settlers of catan" do
    test_item.name = "settlers of catan"
    expect(test_item.name).to eq("settlers of catan")
  end
  
  it "allows an item's name to be edited" do
    test_item.name = "FAKE_item_name"
    expect(test_item.name).to eq("FAKE_item_name")
    
    test_item.edit_name("FAKE_new_item_name")
    expect(test_item.name).to eq("FAKE_new_item_name")
  end

  it "considers an item to have a description" do
    test_item.description = "FAKE item description"
    expect(test_item.description).to be_valid
  end
end

