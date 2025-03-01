class Transportation < ApplicationRecord
  belongs_to :package
  belongs_to :city
end
