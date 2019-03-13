class AddSymbolToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :symbol, :string
  end
end
