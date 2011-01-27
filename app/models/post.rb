class Post < ActiveRecord::Base
  
  validates :title, :content, :presence => true

  validates_uniqueness_of :title
  
  has_many :comments
  
end
