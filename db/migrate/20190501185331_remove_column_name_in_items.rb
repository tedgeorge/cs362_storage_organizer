class RemoveColumnNameInItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :column_name
  end
end
