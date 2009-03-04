class AddFurtherFeatureAttributes < ActiveRecord::Migration
  def self.up
    add_column :features, :first_line_address, :string
    add_column :features, :second_line_address, :string
    add_column :features, :address_town, :string
    add_column :features, :address_county, :string
    add_column :features, :address_postcode, :string
    add_column :features, :email, :string
    add_column :features, :web_address, :string
    add_column :features, :summary, :string
  end

  def self.down
   remove_column :features, :first_line_address
   remove_column :features, :second_line_address
   remove_column :features, :address_town
    remove_column :features, :address_county
    remove_column :features, :address_postcode
    remove_column :features, :email
    remove_column :features, :web_address
    remove_column :features, :summary
  end
end
