class CreateCrashes < ActiveRecord::Migration
  def change
    create_table :crashes do |t|
      t.datetime :date
      t.string :item_for_exchange
      t.integer :host_id
      t.integer :crasher_id

      t.timestamps null: false
    end
  end
end
