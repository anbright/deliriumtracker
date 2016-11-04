class CreateAccelerometers < ActiveRecord::Migration[5.0]
  def change
    create_table :accelerometers do |t|
      t.integer :time, :limit => 8
      t.integer :user_id
      t.float :x, :scale => 8
      t.float :y, :scale => 8
      t.float :z, :scale => 8

      t.timestamps
    end
  end
end
