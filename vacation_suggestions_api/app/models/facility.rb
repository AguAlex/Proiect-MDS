class Facility < ApplicationRecord
    has_many :properties_facilities
    has_many :properties, through: :properties_facilities
  end
  