class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.string :topic, default: 'No Topic Set'

      t.timestamps null: false
    end
  end
end
