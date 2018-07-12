class CreateGuideAvailabilityOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_availability_options do |t|
      t.references :guide_availability, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
