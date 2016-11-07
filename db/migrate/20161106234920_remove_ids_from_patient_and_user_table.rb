class RemoveIdsFromPatientAndUserTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :patient_id, :integer
    remove_column :users, :user_id, :integer
  end
end
