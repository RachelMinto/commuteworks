class RenameStreetToAddress < ActiveRecord::Migration
  def change
    rename_column :users, :street, :address
  end
end
