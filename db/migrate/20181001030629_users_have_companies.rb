class UsersHaveCompanies < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :real_estate_companies, index: true
    add_foreign_key :users, :real_estate_companies
  end
end
