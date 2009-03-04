class RemoveCategorieIdReplaceWithCategoryIdDimwit < ActiveRecord::Migration
  def self.up
    add_column :business_types, :category_id, :integer
    remove_column :business_types, :categorie_id
  end

  def self.down
    remove_colum :business_types, category_id
    add_column :business_types, :categorie_id, :integer
  end
end
