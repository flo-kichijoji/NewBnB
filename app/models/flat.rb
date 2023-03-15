class Flat < ApplicationRecord
  belongs_to :user

  validates :name, :address, :description, :price, :capacity, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
