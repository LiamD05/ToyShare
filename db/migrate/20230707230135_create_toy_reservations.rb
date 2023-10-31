class CreateToyReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :toy_reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :toy_type, null: false, foreign_key: true
      t.boolean :fulfilled
      t.datetime :start_date

      t.timestamps
    end
  end
end
