class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :role_name
      t.text :role_description, null: false

      t.timestamps
    end
  end
end
