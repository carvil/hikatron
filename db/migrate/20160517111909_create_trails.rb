class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.string :description
      t.integer :distance
      t.integer :duration
      t.string :local_number
      t.string :eu_number

      t.timestamps null: false
    end

    add_index :trails, :local_number, unique: true
  end
end
