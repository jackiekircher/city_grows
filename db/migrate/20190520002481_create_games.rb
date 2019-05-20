class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :day, default: 1
      t.integer :money

      t.timestamps
    end
  end
end
