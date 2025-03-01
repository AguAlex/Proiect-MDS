class CreateProperties < ActiveRecord::Migration[8.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :type
      t.references :city, null: false, foreign_key: true
      t.decimal :rating

      t.timestamps
    end
  end
end
