class StorageContainersController < ApplicationController
	def new
		@storage_container = StorageContainer.new
    @storage_container.items << Item.new
	end

	def index
		@storage_containers = if params[:term]
      StorageContainer.where('name LIKE ?', "%#{params[:term]}")
    else
      StorageContainer.all
    end
	end

	def create
		@storage_container = StorageContainer.new(storage_container_params)
    if @storage_container.save
      redirect_to storage_containers_path
    else
      render :new
    end
	end

  def edit
    @storage_container = StorageContainer.find(params[:id])
  end

  def update
    @storage_container = StorageContainer.find(params[:id])
    @storage_container.update(storage_container_params)
    redirect_to storage_containers_path(@storage_container)
  end

  def destroy
    @storage_container = StorageContainer.find(params[:id])
    @storage_container.destroy
    redirect_to storage_containers_path
  end

  def storage_container_params
    params.require(:storage_container).permit(:name, :term, items_attributes: [:id, :name])
  end

end
