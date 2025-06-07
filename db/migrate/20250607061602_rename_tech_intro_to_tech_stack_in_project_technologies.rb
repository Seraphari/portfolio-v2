class RenameTechIntroToTechStackInProjectTechnologies < ActiveRecord::Migration[7.0]
  def change
    rename_column :project_technologies, :tech_intro, :tech_stack
  end
end
