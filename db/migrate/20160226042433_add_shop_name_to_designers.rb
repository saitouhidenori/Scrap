class AddShopNameToDesigners < ActiveRecord::Migration
  def change
    add_column :designers, :shop_name, :string
    add_column :designers, :image, :text
  end
end
