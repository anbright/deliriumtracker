class AddAccelerometerToPatient < ActiveRecord::Migration[5.0]
  def change
    add_reference :accelerometers, :user, index:true
  end
end
