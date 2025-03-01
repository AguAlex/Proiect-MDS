class CreateTransportations < ActiveRecord::Migration[8.0]
  def change
    create_table :transportations do |t|
      t.string :company_name
      t.string :type
      t.integer :duration
      t.string :departure_location
      t.references :city, null: false, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
