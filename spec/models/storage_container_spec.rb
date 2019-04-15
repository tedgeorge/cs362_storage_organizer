require "rails_helper"

RSpec.describe StorageContainer  do 
	let(:storage_container) { StorageContainer.new }
	let(:item) { Item.new }

	it "considers a storage container with no items to be empty" do
		expect(storage_container.empty?).to be_truthy
	end

	it "considers a storage container with items to not be empty" do
		storage_container.items << item
		expect(storage_container.empty?).to be_falsy
	end

	# it "marks a storage container empty if it contains no items" do
	# 	storage_container.items << item
	# 	item.delete
	# 	expect(storage_container).to be_empty
	# end

  it "considers a storage container with a name to be board games" do
    storage_container.name = "board games"
    expect(storage_container.name).to eq("board games")
  end

  it "considers a storage container to add an item"	do
    added_item = Item.new
    added_item.name = "add item"
    expect(storage_container).to receive(:add).with(added_item)
    storage_container.add(added_item)
  end

end
	
