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

  it "considers a storage container with a name to be board games" do
    test_storage_container.name = "board games"
    expect(test_storage_container.name).to eq("board games")
  end

  it "considers a storage container to have a description" do
    test_storage_container.description = "lorem ipsum"
    expect(test_storage_container.description).to eq("lorem ipsum")
  end

  it "considers a storage container to add an item"	do
    test_added_item = Item.new
    test_added_item.name = "FAKE_generic_item"
    expect(test_storage_container).to receive(:add).with(test_added_item)
    test_storage_container.add(test_added_item)
  end

  it "considers a storage container to remove a specific item" do
    test_removeable_item = Item.new
    test_storage_container.add(test_removeable_item)

    expect(test_storage_container).to receive(:remove).with(test_removeable_item)
    test_storage_container.remove(test_removeable_item)
  end

  it "consider a storage container to not have a specific item" do
    test_not_added_item = Item.new
    expect(test_storage_container.have_item?(test_not_added_item)).to be_falsy
  end

  it "expects to be able to edit the storage container name" do
    test_storage_container.name = "FAKE_name"
    test_storage_container.edit_name("FAKE_new_name")
    expect(test_storage_container.name).to eq("FAKE_new_name")
  end

  it "expects to be able to edit the storage container description" do
    test_storage_container.description = "FAKE_description"
    test_storage_container.edit_description("FAKE_new_description")
    expect(test_storage_container.description).to eq("FAKE_new_description")
  end
end
	
