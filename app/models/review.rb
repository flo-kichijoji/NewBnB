class Review < ApplicationRecord
  belongs_to :flat
  belongs_to :user

  validates :comment, presnce: true
end
