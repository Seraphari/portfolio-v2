class RenameTaglineToProjectTaglineInProjects < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :tagline, :project_tagline
  end
end
