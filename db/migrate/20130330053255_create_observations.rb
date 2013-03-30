class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.string :title
      t.string :url
      t.string :media
      t.integer :disable

      t.timestamps
    end
  end
end
