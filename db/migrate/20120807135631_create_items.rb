class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :manifestation_id
      t.integer :shelf_id
      t.string :item_identifier

      t.timestamps
    end
  end
end
