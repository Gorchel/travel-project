class CreateOtherArchitectures < ActiveRecord::Migration
  def change
    create_table :other_architectures do |t|
      t.string :name
      t.string :century
      t.references :region
      t.references :city

      t.timestamps null: false
    end
    add_index :other_architectures, :region_id
    add_index :other_architectures, :city_id
  end
end
