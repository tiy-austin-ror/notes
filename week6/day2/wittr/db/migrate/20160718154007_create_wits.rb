class CreateWits < ActiveRecord::Migration[5.0]
  def change
    create_table :wits do |t|
      t.belongs_to :user, foreign_key: true
      t.text :body, null: false, limit: 180

      t.timestamps
    end
  end
end
