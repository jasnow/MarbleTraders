class CreateMarbles < ActiveRecord::Migration
  def change
    create_table :marbles do |t|
      t.integer :user_id
      t.string :marble_name
      t.text :marble_text

      t.timestamps
    end
  end
end
