class House < ApplicationRecord
  belongs_to :real_estate_company
  #this is the realtor
  belongs_to :user
  has_many :inquiries
end
