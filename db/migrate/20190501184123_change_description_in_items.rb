class ChangeDescriptionInItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :description, :string, default: "No Description"
  end
end
