class CreateCarpools < ActiveRecord::Migration
  def change
    create_table :carpools do |t|
      t.string :origin_location
      t.string :parking_location
      t.integer :days_per_week
      t.timestamps
    end
  end
end
