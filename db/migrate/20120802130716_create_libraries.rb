class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.text :address
      t.string :telephone_number

      t.timestamps
    end
  end
end
