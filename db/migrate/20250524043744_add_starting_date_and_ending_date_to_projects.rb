class AddStartingDateAndEndingDateToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :starting_date, :string, null: false
    add_column :projects, :ending_date, :string, null: false
  end
end
