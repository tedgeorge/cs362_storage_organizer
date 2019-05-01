class AddTestColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :column_name, :string
  end
end
