class AddVariablesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :address, :string
    add_column :users, :radius, :float
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :professional_goal, :text
    add_column :users, :bio, :text
  end
end
