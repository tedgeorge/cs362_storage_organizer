require "rails_helper"

RSpec.describe StorageContainer  do
  let(:test_storage_container) { FactoryBot.build_stubbed(:storage_container) }


  describe "without items" do
  	it "considers a storage container without items to be empty" do
  		expect(test_storage_container.empty?).to be_truthy
  	end

    it "expects a storage container without items to add an item" do
      test_added_item = FactoryBot.build_stubbed(:item)
      expect(test_storage_container).to receive(:add).with(test_added_item)
      test_storage_container.add(test_added_item)
    end

    it "expects to be able to delete an empty container" do
      test_storage_container = FactoryBot.build(:storage_container)
      expect(test_storage_container.empty?).to be_truthy
      test_storage_container.delete
      expect(test_storage_container.accessible). to be_falsy
    end

    it "expects to be able to edit the storage container name" do
      test_storage_container.edit_name("FAKE_new_name")
      expect(test_storage_container.name).to eq("FAKE_new_name")
    end

    it "expects to be able to edit the storage container description" do
      test_storage_container.edit_description("FAKE_new_description")
      expect(test_storage_container.description).to eq("FAKE_new_description")
    end

    it "expects to be slow" do
      expect(test_storage_container.perform(BigDependency.new)).to eq(42)
    end

  end

  describe "with items" do
  let(:test_storage_container) {FactoryBot.build_stubbed(:storage_container, items: [test_item])}
  let(:test_item) { FactoryBot.build_stubbed(:item) }

    it "expects a storage container to have a description" do
      assert_equal("Clara's Closet", test_storage_container.description)
    end

  	it "considers a storage container with items to not be empty" do
  		expect(test_storage_container.empty?).to be_falsy
  	end

    it "considers a storage container to remove a specific item" do
      expect(test_storage_container).to receive(:remove).with(test_item)
      test_storage_container.remove(test_item)
    end

    it "consider a storage container to not have a specific item" do
      test_not_added_item = FactoryBot.build_stubbed(:item)
      expect(test_storage_container.have_item?(test_not_added_item)).to be_falsy
    end

    it "considers a storage container with one item to have a size of one" do
      expect(test_storage_container.size).to be(1)
    end

    it "expects to not be able to delete storage container with items" do
      test_storage_container = FactoryBot.build(:storage_container, items: [test_item])
      expect(test_storage_container.empty?).to be_falsy
      test_storage_container.delete
      refute(test_storage_container.accessible == false)
    end

  end

end
