class AddGameTable < ActiveRecord::Migration
  def change
    create_table(:games) do |table|
      table.string  :state, default: "NEW"
      table.string  :word , null: false # (word STRING NOT NULL)
      table.integer :turn , default: 0
      table.string  :chosen_letters, default: ""
      table.integer :player_id, null: false
      table.timestamps
    end
  end
end

