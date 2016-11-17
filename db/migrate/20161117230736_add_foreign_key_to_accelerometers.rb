class AddForeignKeyToAccelerometers < ActiveRecord::Migration[5.0]
  def change
    add_reference :accelerometers, :patient, index: true
    remove_reference :accelerometers, :user, index: true
  end
end
