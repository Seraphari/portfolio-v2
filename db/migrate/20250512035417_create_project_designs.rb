class CreateProjectDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :project_designs do |t|
      t.references :project, null: false, foreign_key: true, index: { unique: true }
      t.text :design_summary_1, null:false
      t.text :design_summary_2, null:false
      t.text :design_summary_3, null:false
      t.text :design_summary_4
      t.text :design_summary_5
      t.text :design_principles, null:false
      t.text :user_experience_design, null:false
      t.text :user_interface, null:false

      t.timestamps
    end
  end
end
