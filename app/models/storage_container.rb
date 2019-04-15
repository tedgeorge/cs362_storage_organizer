class StorageContainer
	attr_accessor :items, :name

  def initialize
    @name
    @items = []
  end

  def empty?
  	items.empty?
  end
  
  def add(item)
    items << item
  end
end
