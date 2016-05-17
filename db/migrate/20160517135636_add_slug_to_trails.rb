class AddSlugToTrails < ActiveRecord::Migration
  def change
    add_column :trails, :slug, :string
    add_index :trails, :slug, unique: true
  end
end
