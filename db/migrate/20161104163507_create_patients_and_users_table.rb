class CreatePatientsAndUsersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :patients_users do |t|
    	t.belongs_to :patient, index: true
    	t.belongs_to :user, index: true
    end
  end
end
