class Flat < ApplicationRecord
  belongs_to :user

  validates :name, :address, :description, :price, :capacity, presence: true
end
