class CreateNinjas < ActiveRecord::Migration
  def change
    create_table :ninjas do |t|
      t.string :first_name
      t.string :last_name
      t.references :dojo

      t.timestamps
    end
  end
end
