class Mark < ApplicationRecord
  validates :mark, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10,  only_integer: true }
  validates :post_id, presence: true
end
