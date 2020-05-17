class Book < ApplicationRecord
  validates :availability, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :title, presence: true
  validates :copies_available, presence: true
end
