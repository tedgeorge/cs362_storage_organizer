class AddAccessibleToStorageContainers < ActiveRecord::Migration[5.2]
  def change
    add_column :storage_containers, :accessible, :boolean, default: true
  end
end
