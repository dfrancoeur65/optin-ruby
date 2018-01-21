class CreateAttenders < ActiveRecord::Migration[5.1]
  def change
    create_table :attenders do |t|
      t.integer :user_id
      t.integer :happening_id
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
