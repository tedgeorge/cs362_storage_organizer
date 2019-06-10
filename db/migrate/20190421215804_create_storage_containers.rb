class CreateStorageContainers < ActiveRecord::Migration[5.2]
  def change
    create_table :storage_containers do |t|
      t.string :name
      t.string :description
      t.integer :size
      t.timestamps
    end
  end
end
