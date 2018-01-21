class DropAttendersTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :attenders 
  end
end
