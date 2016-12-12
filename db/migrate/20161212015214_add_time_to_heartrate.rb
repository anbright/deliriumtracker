class AddTimeToHeartrate < ActiveRecord::Migration[5.0]
  def change
    add_column :heartrates, :time, :integer, :limit => 8
    change_column :heartrates, :value, :float
  end
end
