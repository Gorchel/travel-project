class CreateNatures < ActiveRecord::Migration
  def change
    create_table :natures do |t|
      t.string :name
      t.string :century
      t.references :region
      t.references :city

      t.timestamps null: false
    end
    add_index :natures, :region_id
    add_index :natures, :city_id
  end
end
