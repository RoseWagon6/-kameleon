class Costume < ApplicationRecord
  has_many :bookings
  belongs_to :user

  mount_uploader :image, PhotoUploader
end
