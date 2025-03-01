class CreatePropertiesFacilities < ActiveRecord::Migration[8.0]
  def change
    create_table :properties_facilities do |t|
      t.references :property, null: false, foreign_key: true
      t.references :facility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
