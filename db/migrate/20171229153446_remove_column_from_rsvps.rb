class RemoveColumnFromRsvps < ActiveRecord::Migration[5.1]
  def change
    remove_column :rsvps , :attender_id
  end
end
