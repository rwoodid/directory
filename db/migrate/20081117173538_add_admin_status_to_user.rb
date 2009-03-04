class AddAdminStatusToUser < ActiveRecord::Migration
  def self.up
  add_column :users, :admin_access, :boolean
  end

  def self.down
    remove_column :users, :admin_access
  end
end
