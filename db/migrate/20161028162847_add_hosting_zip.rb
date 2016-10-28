class AddHostingZip < ActiveRecord::Migration
  def change
    add_column :students, :hosting_zip, :integer
  end
end
