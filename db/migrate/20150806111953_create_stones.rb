class CreateStones < ActiveRecord::Migration
  def change
    create_table :stones do |t|
      t.string :name
      t.string :century
      t.references :region
      t.references :city

      t.timestamps null: false
    end
    add_index :stones, :region_id
    add_index :stones, :city_id
  end
end
