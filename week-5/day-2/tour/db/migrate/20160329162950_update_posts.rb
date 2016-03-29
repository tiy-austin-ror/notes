class UpdatePosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.rename :author, :editor
    end
  end
end
