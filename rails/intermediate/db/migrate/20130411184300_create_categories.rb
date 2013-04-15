class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :controllers

      t.timestamps
    end
    add_index :categories, :controllers_id
  end
end
