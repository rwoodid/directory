class AddUrlToFeature < ActiveRecord::Migration
  def self.up
     add_column :features, :url, :string
  end

  def self.down
     remove_column :features, :url
  end
end
