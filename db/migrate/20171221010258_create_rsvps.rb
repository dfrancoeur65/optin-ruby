class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.integer :user_id
      t.integer :happening_id
      t.string :response
      t.integer :guest
      t.timestamps
    end
  end
end
