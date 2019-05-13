require "rails_helper"

RSpec.describe StorageContainer  do 
  describe "without items" do
	let(:test_storage_container) { FactoryBot.build_stubbed(:storage_container) }
	# let(:test_item) { FactoryBot.create(:item) }

  	it "considers a storage container without items to be empty" do
  		expect(test_storage_container.empty?).to be_truthy
  	end

    it "expects a storage container without items to add an item" do
      # test_added_item = Item.new
      # test_added_item.name = "FAKE_generic_item"
      test_added_item = FactoryBot.build_stubbed(:item)
      expect(test_storage_container).to receive(:add).with(test_added_item)
      test_storage_container.add(test_added_item)
    end

    it "expects to be able to delete an empty container" do
      test_storage_container = FactoryBot.create(:storage_container)
      expect(test_storage_container.empty?).to be_truthy
      test_storage_container.delete
      expect(test_storage_container.accessible). to be_falsy
    end

    it "expects to be able to edit the storage container name" do
      # test_storage_container.name = "FAKE_name"
      test_storage_container.edit_name("FAKE_new_name")
      expect(test_storage_container.name).to eq("FAKE_new_name")
    end

    it "expects to be able to edit the storage container description" do
      # test_storage_container.description = "FAKE_description"
      test_storage_container.edit_description("FAKE_new_description")
      expect(test_storage_container.description).to eq("FAKE_new_description")
    end

  end

end

    it "expects a storage container to have a description" do
      test_storage_container.description = "lorem ipsum"
      expect(test_storage_container.description).to eq("lorem ipsum")
    end

	it "considers a storage container with items to not be empty" do
		test_storage_container.items << test_item
		expect(test_storage_container.empty?).to be_falsy
	end

  # it "considers a storage container with a name to be board games" do
  #   # test_storage_container.name = "board games"
  #   expect(test_storage_container.name).to eq("board games")
  # end

  

  

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

  

  

  it "expects to not be able to delete storage container with items" do
    test_storage_container.add(test_item)
    expect(test_storage_container.empty?).to be_falsy
    test_storage_container.delete
    refute(test_storage_container.accessible == false)
  end

  
  
end
	
