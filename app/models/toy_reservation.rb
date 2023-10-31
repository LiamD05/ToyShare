class ToyReservation < ApplicationRecord
  belongs_to :user
  belongs_to :toy_type
end
