class Book < ApplicationRecord
  belongs_to :user
  validates_inclusion_of :availability, in: [true, false]
  validates :author, presence: true
  validates :genre, presence: true
  validates :title, presence: true
  validates :copies_available, presence: true
end
