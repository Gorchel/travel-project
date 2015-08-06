class CreateTraditions < ActiveRecord::Migration
  def change
    create_table :traditions do |t|
      t.string :name
      t.integer :region_id
      t.string :about

      t.timestamps null: false
    end
  end
end
