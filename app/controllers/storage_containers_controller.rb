class StorageContainersController < ApplicationController
	def new
		@storage_container = StorageContainer.new
	end
end
