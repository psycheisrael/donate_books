class User < ApplicationRecord
  has_many :books
  validates :full_name, presence: true, uniqueness: true
  validates :email, presence: true
end
