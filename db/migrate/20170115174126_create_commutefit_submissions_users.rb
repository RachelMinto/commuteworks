class CreateCommutefitSubmissionsUsers < ActiveRecord::Migration
  def change
    create_table :commutefit_submissions_users do |t|
      t.integer :user_id, :commutefit_submission_id
    end
  end
end
