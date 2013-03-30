class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.integer :organizer_id
      t.string :media
      t.string :main_url
      t.string :sub_url
      t.text :memo
      t.integer :disable

      t.timestamps
    end
  end
end
