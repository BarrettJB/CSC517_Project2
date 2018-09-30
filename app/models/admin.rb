class Admin < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :email, presence: true, length: {maximum: 255},
                    uniqueness: { case_sensitive: false},
                    format: { with: /[\w\.=-]+@[\w\.-]+\.[\w]{2,3}/i }
  validates :name, presence: true, length: {maximum: 50}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6, maximum: 32}
end
