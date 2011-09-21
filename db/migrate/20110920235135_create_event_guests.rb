class CreateEventGuests < ActiveRecord::Migration
  def change
    create_table :event_guests do |t|
      t.references :event
      t.references :user
      t.string :rsvp

      t.timestamps
    end
    add_index :event_guests, :event_id
    add_index :event_guests, :user_id
  end
end
