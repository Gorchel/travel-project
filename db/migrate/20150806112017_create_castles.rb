class CreateCastles < ActiveRecord::Migration
  def change
    create_table :castles do |t|
      t.string :name
      t.string :century
      t.references :region
      t.references :city

      t.timestamps null: false
    end
    add_index :castles, :region_id
    add_index :castles, :city_id
  end
end
