class Restaurant < ApplicationRecord
  has_many :review
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: {
  in: %w[chinese italian japanese french belgian], message: 'Please enter a valid category'}
  has_many :reviews, dependent: :destroy
end
