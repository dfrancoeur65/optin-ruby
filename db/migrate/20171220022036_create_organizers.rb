class CreateOrganizers < ActiveRecord::Migration[5.1]
  def change
    create_table :organizers do |t|
      t.integer :user_id 
      t.integer :happening_id
      t.timestamps
    end
  end
end
