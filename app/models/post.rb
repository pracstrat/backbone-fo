class Post < ActiveRecord::Base
  has_many :comments
  
  # validates :title, :presence => true
  # validates :content, :presence => true
  
  def faye_channel
    'posts'
  end
end
