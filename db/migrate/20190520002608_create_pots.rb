class CreatePots < ActiveRecord::Migration[5.2]
  def change
    create_table :pots do |t|
      t.belongs_to :game
      t.integer :position_x
      t.integer :position_y
      t.integer :last_watered_at

      t.timestamps
    end

    add_foreign_key :pots, :games
  end
end
