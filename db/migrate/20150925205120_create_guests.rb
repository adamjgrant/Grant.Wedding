class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.integer :addons
      t.string :language

      t.timestamps null: false
    end
  end
end
