class CreateGuideAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_availabilities do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
