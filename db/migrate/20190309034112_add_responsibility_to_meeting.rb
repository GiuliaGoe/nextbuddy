class AddResponsibilityToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :responsibility, :string
  end
end
