class AddRealEstateCompanyReferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :real_estate_companies, :users, index: true
    add_foreign_key  :real_estate_companies, :users
  end
end
