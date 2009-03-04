class AddBusinessType < ActiveRecord::Migration
  def self.up
    add_column :features, :business_type, :string
  end
  

  def self.down
    remove_column :features, :business_type
  end
end
