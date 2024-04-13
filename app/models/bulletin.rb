class Bulletin < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :display, resize_to_limit: [500, 500]
  end
  validates :title, presence: true, length: { maximum: 140 }
  validates :announcement_date, presence: true
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
                                    message: "must be a valid image format" },
            size: { less_than: 5.megabytes,
                    message: "should be less than 5MB" }
end
