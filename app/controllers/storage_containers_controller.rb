class StorageContainersController < ApplicationController
	def new
		@storage_container = StorageContainer.new
	end

	def create
		@workflow = CreatesStorageContainer.new(name: params[:storage_container] [:name])
		@workflow.create
		redirect_to storage_containers_path
	end
end
