require "rails_helper"

RSpec.describe StorageContainer  do 
	it "considers a storage container with no tasks to be done" do
		storage_container = StorageContainer.new
		expect(storage_container.done?).to be_truthy
	end
	
end
	
