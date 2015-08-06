class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :region_id
      t.string :about
      t.string :type

      t.timestamps null: false
    end
  end
end
