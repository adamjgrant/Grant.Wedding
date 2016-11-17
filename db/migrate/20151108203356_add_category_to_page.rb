class AddCategoryToPage < ActiveRecord::Migration
  def change
    add_column :pages, :category, :string
    add_column :pages, :string, :string
  end
end
