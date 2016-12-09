class AddPatientNumToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :patient_num, :integer
    add_index :patients, :patient_num, unique: true
  end
end
