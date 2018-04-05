class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings # as renter
  # has_many :rented_costumes, through: :bookings, source: :costume # as renter

  has_many :costumes # as owner
  has_many :received_bookings, through: :costumes, source: :bookings #booking as an owner

  mount_uploader :avatar, PhotoUploader
end
