class AddUsersToRsvps < ActiveRecord::Migration[5.1]
  def change
    add_column :rsvps, :user_id, :integer
  end
end
