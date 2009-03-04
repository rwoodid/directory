class Feature < ActiveRecord::Base
  
  def self.per_page
        5
  end
  
  def to_param
     "#{id}-#{business_name.gsub(/[^a-z0-9]+/i, '-')}"
  end
  
  has_many :reviews
  has_many :users, :through => :reviews
  belongs_to :business_type
  
  
  
  has_attached_file :logophoto
  
  validates_presence_of :description, :business_name, :telephone, :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  named_scope :by_average_review, :order => "average_review_stars desc"  
  
  def average_stars
    update_attribute(:average_review_stars, reviews.average(:stars)) if average_review_stars.nil?
    average_review_stars
  end
  
  
  end

