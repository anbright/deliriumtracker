class CreateAccelerometers < ActiveRecord::Migration[5.0]
  def change
    create_table :accelerometers do |t|
      t.integer :time, :limit => 8
      t.integer :user_id
      t.float :x
      t.float :y
      t.float :z

      t.timestamps
    end
  end
end
