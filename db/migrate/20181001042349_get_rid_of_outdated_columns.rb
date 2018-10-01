class GetRidOfOutdatedColumns < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :real_estate_companies, name: "real_estate_company_id"
  end
end