require "rails_helper"

RSpec.describe Item do 
	let(:item) { Item.new }

	it "considers a new item packed" do
		expect(item).to be_packed
	end

	it "allows us to delete an item" do
		item.delete
		expect(item).not_to be_packed
	end

  it "considers an item to have a name of settlers of catan" do
    item.name = "settlers of catan"
    expect(item.name).to eq("settlers of catan")
  end
  
end