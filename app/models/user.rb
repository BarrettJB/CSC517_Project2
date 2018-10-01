class User < ApplicationRecord
  has_one :real_estate_company
  has_many :houses
  has_and_belongs_to_many :interested_houses, :class_name => 'House', :foreign_key => 'potential_buyers_id'
  has_many :inquiries
  before_save { self.email = email.downcase }
  validates :email, presence: true, length: {maximum: 255},
                    uniqueness: { case_sensitive: false},
                    format: { with: /[\w\.=-]+@[\w\.-]+\.[\w]{2,3}/i }
  validates :name, presence: true, length: {maximum: 50}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6, maximum: 32}, on: :create
  
  def has_company?
    if !real_estate_company_id.nil? && current_mode == 'realtor'
      return true
    else
      return false
    end
  end
  
  def company
    if real_estate_company_id.nil? || current_mode != 'realtor'
      return nil
    else
      RealEstateCompany.find(real_estate_company_id)
    end
  end
end
