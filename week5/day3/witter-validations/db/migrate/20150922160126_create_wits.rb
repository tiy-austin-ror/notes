class CreateWits < ActiveRecord::Migration
  def change
    create_table :wits do |t|
      t.string :message
      t.boolean :published
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
