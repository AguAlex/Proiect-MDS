class Package < ApplicationRecord
  belongs_to :property
  belongs_to :user
  belongs_to :transportation
end
