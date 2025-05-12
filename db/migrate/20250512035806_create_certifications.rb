class CreateCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :certifications do |t|
      t.references :role, null: false, foreign_key: true
      t.string :company_name, null: false
      t.string :starting_year, null: false
      t.string :ending_year, null: false
      t.text :certification_summary_1, null: false
      t.text :certification_summary_2, null: false
      t.text :certification_summary_3, null: false
      t.text :certification_summary_4
      t.text :certification_summary_5

      t.timestamps
    end
  end
end
