class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.string :day_of_week
      t.string :period_of_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
