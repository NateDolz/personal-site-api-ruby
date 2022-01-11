class UpdateDateColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :start, :start_date
    rename_column :jobs, :end, :end_date 
  end
end
