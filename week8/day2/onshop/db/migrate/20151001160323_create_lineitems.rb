class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.belongs_to :order, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true
      t.integer :quantity, default: 0

      t.timestamps null: false
    end
  end
end
