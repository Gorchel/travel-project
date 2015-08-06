class CreateTraditions < ActiveRecord::Migration
  def change
    create_table :traditions do |t|
      t.string :name
      t.references :region
      t.string :about

      t.timestamps null: false
    end
    add_index :traditions, :region_id
  end
end
