class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 4..12 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..16 }

  has_many :posts
  has_many :comments
end
