class Comment < ActiveRecord::Base
  
  validates :email, :content, :post_id, :presence => true
  
  belongs_to :post
  
end
