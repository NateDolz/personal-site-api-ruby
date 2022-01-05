class CreateJobLines < ActiveRecord::Migration[7.0]
  def change
    create_table :job_lines do |t|
      t.references :job, foreign_key: true
      t.text :line
      t.timestamps
    end
  end
end
