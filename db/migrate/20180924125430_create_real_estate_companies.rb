class CreateRealEstateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :real_estate_companies do |t|
      t.integer :real_estate_compay_id
      t.string :name
      t.string :website
      t.text :address
      t.string :size
      t.integer :founded
      t.decimal :revenue
      t.text :synopsis

      t.timestamps
    end
  end
end
