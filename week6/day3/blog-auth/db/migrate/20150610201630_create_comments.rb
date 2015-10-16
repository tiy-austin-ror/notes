class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.text :body
      t.belongs_to :post
      #t.integer :post_id

      t.timestamps null: false
    end
  end
end
