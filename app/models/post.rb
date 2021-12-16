class Post < ApplicationRecord
  validates :message, presence: true
  validates :message, length: { maximum: 1000, minimum: 1 }
end
