class AddUserAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :current_mode, :string
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :phone_number, :string
    add_column :users, :preferred_contact, :string
  end
end
