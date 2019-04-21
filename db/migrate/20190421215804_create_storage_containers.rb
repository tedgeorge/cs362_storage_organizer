class CreateStorageContainers < ActiveRecord::Migration[5.2]
  def change
    create_table :storage_containers do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
