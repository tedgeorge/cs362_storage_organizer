class StorageContainersController < ApplicationController
	def new
		@storage_container = StorageContainer.new
	end

	def index
		@storage_containers = StorageContainer.all
	end

#	def create
#		@workflow = CreatesStorageContainer.new(name: params[:storage_container] [:name])
#		@workflow.create
#		if @workflow.success?
#			redirect_to storage_containers_path
#		else
#			@storage_container = @workflow.storage_container
#			render :new
#		end
#	end

	def create
		@storage_container = StorageContainer.new(storage_container_params)
    if @storage_container.save
      redirect_to storage_containers_path
    else
      render :new
    end
	end
  
  def storage_container_params
    params.require(:storage_container).permit(:name, items: [])
  end
  
end
