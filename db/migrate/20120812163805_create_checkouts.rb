class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :item_id
      t.integer :checkin_id
      t.integer :user_id
      t.datetime :due_date

      t.timestamps
    end
  end
end
