require "rails_helper"

RSpec.describe CreatesStorageContainer do 
	it "creates a project given a name" do
		creator = CreatesStorageContainer.new(name: "Summer Clothes")
		creator.build
		expect(creator.storage_container.name). to eq("Summer Clothes")
	end
end