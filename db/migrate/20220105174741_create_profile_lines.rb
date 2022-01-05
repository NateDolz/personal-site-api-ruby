class CreateProfileLines < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_lines do |t|
      t.references :profile, foreign_key: true
      t.string :line

      t.timestamps
    end
  end
end
