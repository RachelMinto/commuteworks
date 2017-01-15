class CreateUserCommuteModes < ActiveRecord::Migration
  def change
    create_table :commute_modes do |t|
      t.string :mode
    end

    create_table :user_commute_modes do |t|
      t.integer :commute_mode_id, :user_id
    end
  end
end
