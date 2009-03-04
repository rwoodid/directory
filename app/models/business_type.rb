class BusinessType < ActiveRecord::Base
  belongs_to :category
  has_many :features
  
  
end
