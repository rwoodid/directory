class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.string :business_name
      t.string :telephone
      t.text :description
      t.string :category

      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
