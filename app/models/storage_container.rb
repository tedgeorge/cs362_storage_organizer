class StorageContainer < ApplicationRecord
  validates :name, presence: true
  has_many :items, dependent: :destroy

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
