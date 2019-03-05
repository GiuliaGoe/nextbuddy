class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :status
      t.datetime :meeting_date_time
      t.string :suggested_activity
      t.string :meeting_location
      t.string :cancellation_reason
      t.integer :recipient_id
      t.integer :sender_id

      t.timestamps
    end
  end
end
