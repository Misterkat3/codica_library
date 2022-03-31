class AddRoles < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :roles, :string
  end
end
