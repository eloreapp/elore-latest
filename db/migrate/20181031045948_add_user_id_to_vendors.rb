class AddUserIdToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :user_id, :integer
  end
end
