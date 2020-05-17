class User < ApplicationRecord
  validates :full_name, presence: true, uniqueness: true
  validates :email, presence: true
  validates :number_of_books, presence: true
  validates :title, presence: true
  validates :brief_prolong, presence: true
end
