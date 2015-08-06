class CreatePalaces < ActiveRecord::Migration
  def change
    create_table :palaces do |t|
      t.string :name
      t.string :century
      t.references :region
      t.references :city

      t.timestamps null: false
    end
    add_index :palaces, :region_id
    add_index :palaces, :city_id
  end
end
