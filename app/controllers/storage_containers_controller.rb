class StorageContainersController < ApplicationController
	def new
		@storage_container = StorageContainer.new
	end

	def index
		@storage_containers = StorageContainer.all
	end

	def create
		@workflow = CreatesStorageContainer.new(name: params[:storage_container] [:name])
		@workflow.create
		if @workflow.success?
			redirect_to storage_containers_path
		else
			@storage_container = @workflow.storage_container
			render :new
		end
	end
end
