class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :display_name
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
