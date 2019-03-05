class CreateCareerPositions < ActiveRecord::Migration[5.2]
  def change
    create_table :career_positions do |t|
      t.references :job_title, foreign_key: true
      t.references :industry, foreign_key: true
      t.references :job_function, foreign_key: true
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
