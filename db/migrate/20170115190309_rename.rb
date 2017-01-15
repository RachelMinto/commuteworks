class Rename < ActiveRecord::Migration
  def change
    rename_table :programs_users, :user_programs
  end
end
