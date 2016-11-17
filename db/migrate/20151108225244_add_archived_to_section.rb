class AddArchivedToSection < ActiveRecord::Migration
  def change
    add_column :sections, :archived, :boolean, null: false, default: false
  end
end
