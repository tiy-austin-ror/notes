class AddNameToSaves < ActiveRecord::Migration
  def change
    add_column(:saves, :name, :string, null: false, default: "no name")
  # add_column(table, field, type, opts = {})
  end
end
