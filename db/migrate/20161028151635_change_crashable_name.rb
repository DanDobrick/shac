class ChangeCrashableName < ActiveRecord::Migration
  def change
    rename_column :students, :crashable?, :crashable
  end
end
