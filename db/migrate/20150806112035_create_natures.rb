class CreateNatures < ActiveRecord::Migration
  def change
    create_table :natures do |t|
      t.string :name
      t.integer :century
      t.integer :region_id
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
