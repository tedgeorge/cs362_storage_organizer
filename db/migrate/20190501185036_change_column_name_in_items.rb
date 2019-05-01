class ChangeColumnNameInItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :column_name, :string, default: "showing a change"
  end
end
