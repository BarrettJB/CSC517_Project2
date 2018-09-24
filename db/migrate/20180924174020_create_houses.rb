class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :house_id
      t.references :real_estate_company, foreign_key: true
      t.text :location
      t.decimal :square_footage
      t.integer :year_built
      t.string :style
      t.decimal :list_price
      t.integer :floors
      t.boolean :basement
      t.string :current_owner
      t.text :contact_information

      t.timestamps
    end
  end
end
