class StorageContainer
	attr_accessor :items

  def initialize
    @items = []
  end

  def empty?
  	items.empty?
  end
  
  
end
