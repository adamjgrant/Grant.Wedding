class AddClassnameToSection < ActiveRecord::Migration
  def change
    add_column :sections, :classname, :string
  end
end
