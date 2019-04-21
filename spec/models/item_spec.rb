require "rails_helper"

RSpec.describe Item do 
	let(:test_item) { Item.new }

	it "considers a new item packed" do
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
  
end