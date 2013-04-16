class CreateProduces < ActiveRecord::Migration
  def change
    create_table :produces do |t|
      t.integer :patron_id
      t.integer :manifestation_id

      t.timestamps
    end
  end
end
