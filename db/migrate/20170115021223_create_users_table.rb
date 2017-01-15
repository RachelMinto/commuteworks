class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :status
      t.string :street
      t.string :apt
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :phone
      t.string :email
      t.timestamps
    end
  end
end
