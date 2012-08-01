class CreateManifestations < ActiveRecord::Migration
  def change
    create_table :manifestations do |t|
      t.text :original_title
      t.string :isbn
      t.datetime :date_of_publication
      t.text :url

      t.timestamps
    end
  end
end
