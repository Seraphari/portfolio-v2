class CreateProjectTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :project_technologies do |t|
      t.references :project, null: false, foreign_key: true, index: { unique: true }
      t.text :tech_summary_1, null: false
      t.text :tech_summary_2, null: false
      t.text :tech_summary_3, null: false
      t.text :tech_summary_4
      t.text :tech_summary_5
      t.text :tech_intro, null: false
      t.text :system_architecture, null: false
      t.text :development_approach, null: false

      t.timestamps
    end
  end
end
