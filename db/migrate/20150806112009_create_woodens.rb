class CreateWoodens < ActiveRecord::Migration
  def change
    create_table :woodens do |t|
      t.string :name
      t.string :century
      t.references :region
      t.references :city

      t.timestamps null: false
    end
    add_index :woodens, :region_id
    add_index :woodens, :city_id
  end
end
