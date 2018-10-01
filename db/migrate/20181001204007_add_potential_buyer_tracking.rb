class AddPotentialBuyerTracking < ActiveRecord::Migration[5.2]
  def change
    add_references :houses, :potential_buyers, foreign_key: true
  end
end
