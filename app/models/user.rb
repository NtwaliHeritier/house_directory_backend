class User < ApplicationRecord
  has_secure_password
  validates :username, :password, :last_name, :first_name, presence: true
  validates :password, length: {minimum: 5}
  validates :username, uniqueness: true
end
