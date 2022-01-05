class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.date :start
      t.date :end
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
