class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :feature
  
  before_save :clear_feature_average_stars, :store_best_quote
  before_destroy :clear_feature_average_stars
  
  named_scope :most_recent, :order => "created_at desc" 
 # put find condition of not null 
  
  
  def self.random
    find(:first, :order => 'RAND()')
  end
  
  
  
  @@desired_words = %w{great good beautiful wonderful pleased fantastic best recommend}
  @@undesired_words = %w{fuck fucking cunt wanker wankers rubbish useless clueless cock idiot}

  
  def store_best_quote
    ranked_sentences = comments.gsub(/\n|\r/, ' ').split(/\.\s*/).sort_by do |s| 
      
      (s.downcase.scan(/\w[\w\'\-]*/)-@@undesired_words).length-(s.downcase.scan(/\w[\w\'\-]*/)-@@desired_words).length 
    end
     
    self.best_quote = ranked_sentences.last
  end
  
  private
  def clear_feature_average_stars
    Feature.find(feature_id).update_attribute(:average_review_stars, nil)
  end
  
end
