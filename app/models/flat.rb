class Flat < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :name, :address, :description, :price, :capacity, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_by_name_and_address,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
