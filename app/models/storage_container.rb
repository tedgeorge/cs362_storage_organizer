class StorageContainer < ApplicationRecord
  has_many :items, dependent: :destroy
  
	# attr_accessor :name, :description
 #  attr_reader :items

  # def initialize
  #   @name
  #   @description
  #   @items = []
  # end

  def empty?
  	items.empty?
  end
  
  def add(item)
    items << item
  end

  def remove(item)
    items.delete(item)
  end

  def have_item?(item)
    items.include?(item)
  end
  
end
