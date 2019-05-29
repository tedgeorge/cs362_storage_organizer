require "rails_helper"

RSpec.describe CreatesStorageContainer do
	it "creates a storage container given a name" do
		creator = CreatesStorageContainer.new(name: "Summer Clothes")
		creator.build
		expect(creator.storage_container.name). to eq("Summer Clothes")
	end

  describe "failure cases" do
    it "fails when trying to save a sotrage container with no name" do
      creator = CreatesStorageContainer.new(name: "")
      creator.create
      expect(creator).not_to be_a_success
    end
  end
end
