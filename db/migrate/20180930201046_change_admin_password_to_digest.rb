class ChangeAdminPasswordToDigest < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :password_digest, :string
    remove_column :admins, :password
  end
end
