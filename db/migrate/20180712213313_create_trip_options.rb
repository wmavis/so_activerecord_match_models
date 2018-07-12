class CreateTripOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_options do |t|
      t.references :trip, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
