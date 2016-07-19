class AddIpAddressToWits < ActiveRecord::Migration[5.0]
  def change
    add_column :wits, :ip_address, :string
  end
end
