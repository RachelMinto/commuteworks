class AddFkEmployersToUser < ActiveRecord::Migration
  def change
    add_column :users, :employer_id, :integer
  end
end
