class AddIpAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :ip_adr, :text
  end
end
