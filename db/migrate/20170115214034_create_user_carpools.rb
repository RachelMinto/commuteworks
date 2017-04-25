class CreateUserCarpools < ActiveRecord::Migration
  def change
    create_table :user_carpools do |t|
      t.integer :carpool_id, :user_id
    end
  end
end
