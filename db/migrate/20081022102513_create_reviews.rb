class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :feature_id
      t.datetime :created_at
      t.text :comments
      t.integer :stars

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
