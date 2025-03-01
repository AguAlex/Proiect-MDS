class Property < ApplicationRecord
  belongs_to :city
  has_many :rooms
  has_many :packages
  has_many :properties_facilities
  has_many :facilities, through: :properties_facilities
end
