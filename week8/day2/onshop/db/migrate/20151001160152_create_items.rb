class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :img_url
      t.integer :price, default: 0
      t.integer :quantity, default: 0

      t.timestamps null: false
    end
  end
end
