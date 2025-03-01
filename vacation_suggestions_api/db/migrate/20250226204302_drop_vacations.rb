class DropVacations < ActiveRecord::Migration[8.0]
  def change
    drop_table :vacations
  end
end
