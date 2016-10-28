class AddCrashTypeToStudent < ActiveRecord::Migration
  def change
    add_column :students, :crashable_type, :string
  end
end
