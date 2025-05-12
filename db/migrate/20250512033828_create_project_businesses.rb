class CreateProjectBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :project_businesses do |t|
      t.references :project, null: false, foreign_key: true, index: { unique: true }
      t.text :biz_summary_1, null: false
      t.text :biz_summary_2, null: false
      t.text :biz_summary_3, null: false
      t.text :biz_summary_4
      t.text :biz_summary_5
      t.text :biz_intro, null: false
      t.text :problem_statement, null: false
      t.text :recommended_solutions, null: false
      t.text :stakeholder_engagement, null: false

      t.timestamps
    end

  end
end
