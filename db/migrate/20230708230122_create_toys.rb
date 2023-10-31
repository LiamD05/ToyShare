class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.references :toy_type, null: false, foreign_key: true
      t.references :toy_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
