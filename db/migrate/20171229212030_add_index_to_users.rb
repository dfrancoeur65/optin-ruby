class AddIndexToUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :id
    add_index :rsvps, :user_id
    add_index :organizers, :user_id
  end
end
