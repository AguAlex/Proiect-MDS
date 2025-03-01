class User < ApplicationRecord
    has_many :packages
    has_secure_password
  end
  