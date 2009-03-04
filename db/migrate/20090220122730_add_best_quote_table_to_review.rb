class AddBestQuoteTableToReview < ActiveRecord::Migration
  def self.up
    add_column :reviews, :best_quote, :string
  end

  def self.down
    remove_column :reviews, :best_quote
  end
end
