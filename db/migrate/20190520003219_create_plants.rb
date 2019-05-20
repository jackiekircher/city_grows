class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.belongs_to :pot
      t.string :type, null: false
      t.integer :growth

      t.timestamps
    end

    add_foreign_key :plants, :pots
  end
end
