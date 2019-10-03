class Post < ActiveRecord::Base
  validates :content, length: {min: 250 }
  validates :summary, length: {max: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :is_clickbait?

  CLICK_BAIT_PATTERNS = [ /Won't Believe/i,/Secret/i,/Top [0-9]*/i, /Guess/i]

  def is_clickbait?
    if CLICK_BAIT_PATTERNS.NONE? do |p|
      p.match title
    end
    errors.add(:title, "must be clickbait")
    end
  end

end
