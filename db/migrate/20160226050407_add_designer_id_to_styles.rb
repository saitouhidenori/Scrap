class AddDesignerIdToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :designer_id, :integer
  end
end
