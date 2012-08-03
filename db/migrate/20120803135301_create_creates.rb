class CreateCreates < ActiveRecord::Migration
  def change
    create_table :creates do |t|
      t.integer :patron_id
      t.integer :manifestation_id

      t.timestamps
    end
  end
end
