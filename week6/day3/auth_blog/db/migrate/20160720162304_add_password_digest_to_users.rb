class AddPasswordDigestToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :password_digest, :string

    User.all.each do |u|
      u.password = "password"
      u.save
    end

    change_column :users, :password_digest, :string, null: false
  end

  def down
    remove_column :users, :password_digest, :string, null: false
  end
end
