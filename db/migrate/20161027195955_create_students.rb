class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :devise_id
      t.boolean :is_crasher
      t.boolean :is_host
      t.string :school
      t.boolean :crashable?

      t.timestamps null: false
    end
  end
end
