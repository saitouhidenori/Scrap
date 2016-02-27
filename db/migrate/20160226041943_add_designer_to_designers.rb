class AddDesignerToDesigners < ActiveRecord::Migration
  def change
    add_column :designers, :designer, :string
  end
end
