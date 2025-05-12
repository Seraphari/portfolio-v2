class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.string :project_summary
      t.string :project_client
      t.string :project_role

      t.timestamps
    end
  end
end
