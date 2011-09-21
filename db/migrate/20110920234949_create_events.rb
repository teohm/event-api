class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :creator
      t.string :title
      t.string :description
      t.datetime :start
      t.datetime :end
      t.string :location

      t.timestamps
    end
    add_index :events, :creator_id
  end
end
