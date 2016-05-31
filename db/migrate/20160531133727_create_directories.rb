class CreateDirectories < ActiveRecord::Migration
  def change
    create_table :directories do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :alt_phone
      t.string :email
      t.integer :h2h_group

      t.timestamps null: false
    end
  end
end
