require "rails_helper"

RSpec.describe StorageContainer  do 
	let(:test_storage_container) { StorageContainer.new }
	let(:test_item) { Item.new }

	it "considers a storage container with no items to be empty" do
		expect(test_storage_container.empty?).to be_truthy
	end

	it "considers a storage container with items to not be empty" do
		test_storage_container.items << test_item
		expect(test_storage_container.empty?).to be_falsy
	end

	# it "marks a storage container empty if it contains no items" do
	# 	storage_container.items << item
	# 	item.delete
	# 	expect(storage_container).to be_empty
	# end

  it "considers a storage container with a name to be board games" do
    test_storage_container.name = "board games"
    expect(test_storage_container.name).to eq("board games")
  end

  it "considers a storage container to add an item"	do
    test_added_item = Item.new
    test_added_item.name = "FAKE_generic_item"
    expect(test_storage_container).to receive(:add).with(test_added_item)
    test_storage_container.add(test_added_item)
  end

end
	
