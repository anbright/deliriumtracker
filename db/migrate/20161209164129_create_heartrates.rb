class CreateHeartrates < ActiveRecord::Migration[5.0]
  def change
    create_table :heartrates do |t|
      t.belongs_to :patient, foreign_key: true
      t.integer :patient_num
      t.float :value
      t.integer :time, :limit => 8

      t.timestamps
    end
  end
end
