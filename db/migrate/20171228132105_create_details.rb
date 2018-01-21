class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.date :birthday
      t.string :hair_color
      t.string :borrower_experience

      t.timestamps
    end
  end
end
