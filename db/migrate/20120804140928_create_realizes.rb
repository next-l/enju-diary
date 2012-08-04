class CreateRealizes < ActiveRecord::Migration
  def change
    create_table :realizes do |t|
      t.integer :patron_id
      t.integer :manifestation_id

      t.timestamps
    end
  end
end
