class AddImageToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :image, :string
  end
end
