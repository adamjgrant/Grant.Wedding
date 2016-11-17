class RemoveStringFromPage < ActiveRecord::Migration
  def change
    remove_column :pages, :string, :string
  end
end
