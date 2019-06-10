class StorageContainersController < ApplicationController
	def new
		@storage_container = StorageContainer.new
    @storage_container.items << Item.new
	end

	def index
		@storage_containers = StorageContainer.all
	end

	def create
		@storage_container = StorageContainer.new(storage_container_params)
    if @storage_container.save
      redirect_to storage_containers_path
    else
      render :new
    end
	end
  
  def storage_container_params
    params.require(:storage_container).permit(:name, items_attributes: [:name])
  end
  
end
