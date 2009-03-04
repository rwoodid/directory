class RemoveUrlToFeature < ActiveRecord::Migration
  def self.up
    remove_column :features, :url
  end

  def self.down
    add_column :features, :url, :string
  end
end
