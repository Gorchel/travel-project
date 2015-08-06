class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.references :region
      t.string :about
      t.string :type

      t.timestamps null: false
    end
    add_index :routes, :region_id
  end
end
