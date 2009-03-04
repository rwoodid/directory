class UpdateBestQuoteInDatabase < ActiveRecord::Migration
  def self.up
    Review.find(:all).each do |review|
      review.save
    end
    
  end

  def self.down
  end
end
