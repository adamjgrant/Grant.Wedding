class AddFrenchContentToSection < ActiveRecord::Migration
  def change
    add_column :sections, :french_content, :text
  end
end
