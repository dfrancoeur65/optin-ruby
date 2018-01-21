class DropUserFromRsvp < ActiveRecord::Migration[5.1]
  def change
    remove_column :rsvps , :user_id
    add_column :rsvps, :attender_id, :integer 
  end
end
