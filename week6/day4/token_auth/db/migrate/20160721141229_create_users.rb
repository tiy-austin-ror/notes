class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :zip
      t.integer :height, default: 0

      t.timestamps
    end
  end
end
