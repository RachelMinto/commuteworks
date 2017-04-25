class AddCarpoolPartnerEmails < ActiveRecord::Migration
  def change
    add_column :carpools, :user_id, :integer
    add_column :carpools, :carpooler_2_email, :string
    add_column :carpools, :carpooler_3_email, :string
    add_column :carpools, :carpooler_4_email, :string
  end
end
