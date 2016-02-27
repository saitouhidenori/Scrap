class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :desiner_id
      t.text :image
      t.string :designer
      t.string :shop_name
      t.timestamps
    end
  end
end
