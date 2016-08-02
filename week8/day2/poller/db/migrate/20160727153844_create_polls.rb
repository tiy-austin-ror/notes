class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :name, null: false
      t.text :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
