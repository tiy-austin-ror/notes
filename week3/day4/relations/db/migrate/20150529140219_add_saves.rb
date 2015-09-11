class AddSaves < ActiveRecord::Migration
  def change
    create_table :saves do |t|
      t.integer :score, default: 0
      t.string :name
    end
  end
end
