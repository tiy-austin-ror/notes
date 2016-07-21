class AddingAuthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    add_column :users, :auth_token, :string
  end
end
