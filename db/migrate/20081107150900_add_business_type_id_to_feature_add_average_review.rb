class AddBusinessTypeIdToFeatureAddAverageReview < ActiveRecord::Migration
  def self.up
    add_column :features, :business_type_id, :integer
    remove_column :features, :business_type
    add_column :features, :average_review_stars, :decimal, :precision => 3, :scale => 2
  end

  def self.down
     add_column :features, :business_type
     remove_column :features, :business_type_id
     remove_column :features, :average_review_stars
  end
end
