class CreateCommutefitSubmissions < ActiveRecord::Migration
  def change
    create_table :commutefit_submissions do |t|
      t.string :month
      t.integer :year
      t.integer :miles_biked
      t.integer :miles_walked
      t.integer :miles_ran
      t.timestamps
    end
  end
end
