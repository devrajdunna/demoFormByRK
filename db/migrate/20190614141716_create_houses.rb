class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :hno
      t.string :harea

      t.timestamps
    end
  end
end
