class AddDesignerIdToDesigners < ActiveRecord::Migration
  def change
    add_column :designers, :designer_id, :integer
  end
end
