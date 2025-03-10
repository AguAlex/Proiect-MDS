class CreateVacations < ActiveRecord::Migration[8.0]
  def change
    create_table :vacations do |t|
      t.string :name
      t.text :description
      t.string :location
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
