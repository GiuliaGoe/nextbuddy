class AddTopicToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :topic, :string
  end
end
