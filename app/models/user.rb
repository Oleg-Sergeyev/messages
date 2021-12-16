class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :email, uniqueness: true
  validates :email, presence: true
end
