class Post < ActiveRecord::Base
  validates :content, length: {min: 250 }
  validates :summary, length: {max: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  
end
