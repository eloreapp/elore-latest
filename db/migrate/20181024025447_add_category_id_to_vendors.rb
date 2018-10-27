class AddCategoryIdToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :category_id, :integer
  end
end
