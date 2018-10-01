class UsersHaveCompaniesCorrect < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :real_estate_companies, index: true
    remove_foreign_key :users, :real_estate_companies
    add_reference :users, :real_estate_company, foreign_key: true
  end
end
