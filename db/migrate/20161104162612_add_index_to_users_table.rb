class AddIndexToUsersTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :user_id, :integer
  	add_column :patients, :patient_id, :integer
  end
end
