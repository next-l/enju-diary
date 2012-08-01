class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.text :full_name

      t.timestamps
    end
  end
end
