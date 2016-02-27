class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
  end
end

# add_column :likes, :style_id, :integer
# remove_column :likes, :image, :text
#     remove_column :likes, :shop_name, :string
#     remove_column :likes, :designer, :string
#     remove_column :likes, :user, :string