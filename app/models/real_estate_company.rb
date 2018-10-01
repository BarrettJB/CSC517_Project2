class RealEstateCompany < ApplicationRecord
  has_many :users
  has_many :houses
  validates :name, presence: true
  validates :website, presence: true
  #regex allows for any tld as described by https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains
  validates_format_of :website, :with => /www\.[A-Za-z0-9]*.[a-z]{2,3}/i, :on => :create
  validates :address, presence: true
end
