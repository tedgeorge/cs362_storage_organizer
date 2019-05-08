class StorageContainer < ApplicationRecord
  validates :name, presence: true
  has_many :items, dependent: :destroy

  def empty?
  	items.empty?
  end

  def delete
    self.accessible = false if self.empty?
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

  def edit_name(name)
    self.name = name
  end

  def edit_description(description)
    self.description = description
  end
  
end
