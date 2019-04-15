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

	
end
	
