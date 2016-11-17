class RemoveCategoryFromPage < ActiveRecord::Migration
  def change
    remove_column :pages, :category, :integer
  end
end
