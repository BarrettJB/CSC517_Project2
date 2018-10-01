class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.references :user, foreign_key: true
      t.references :house, foreign_key: true
      t.string :subject
      t.text :message
      t.timestamps
    end
  end
end
