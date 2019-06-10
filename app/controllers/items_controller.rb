class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end
  
  def create
		@items = Item.new(item_params)
    if @items.save
      redirect_to storage_containers_path
    end
	end
  
  def item_params
    params.require(:item).permit(:name)
  end
end
