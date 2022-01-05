class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.date :graduation
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
