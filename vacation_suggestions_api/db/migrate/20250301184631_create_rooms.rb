class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.references :property, null: false, foreign_key: true
      t.decimal :price_per_night
      t.integer :number_of_people
      t.integer :number_of_rooms

      t.timestamps
    end
  end
end
