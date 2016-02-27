class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :designer
      t.string :user
      t.integer :designer_id
      t.integer :user_id
      t.string :shop_name
      t.text :image
      t.timestamps
    end
  end
end
