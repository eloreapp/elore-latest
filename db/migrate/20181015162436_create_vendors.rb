class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :body
      t.string :url
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url
      t.string :email

      t.timestamps
    end
  end
end
