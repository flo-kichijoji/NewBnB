class User < ApplicationRecord
  validates :name, :last_name, :first_name, :email, :phone_number, presence: true

end
