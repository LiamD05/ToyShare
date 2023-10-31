class CreateToyTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :toy_types do |t|
      t.string :name
      t.integer :min_age
      t.integer :max_age
      t.integer :weight
      t.string :size
      t.integer :quantity

      t.timestamps
    end
  end
end
