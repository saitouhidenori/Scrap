class RemoveColumnFromLikes < ActiveRecord::Migration
  def change
    # remove_column :likes, :image, :text
    remove_column :likes, :shop_name, :string
    remove_column :likes, :designer, :string
    remove_column :likes, :user, :string
    remove_column :likes, :designer_id, :integer
  end
end
