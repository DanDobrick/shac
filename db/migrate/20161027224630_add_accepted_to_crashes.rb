class AddAcceptedToCrashes < ActiveRecord::Migration
  def change
    add_column :crashes, :accepted, :boolean
  end
end
