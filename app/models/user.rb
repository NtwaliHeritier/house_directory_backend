class User < ApplicationRecord
  has_secure_password
  has_many :houses

  validates :username, :password, :last_name, :first_name, presence: true
  validates :password, length: {minimum: 5}
  validates :username, uniqueness: true
end
