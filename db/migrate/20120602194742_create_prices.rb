class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :vip
      t.integer :regular
      t.integer :no_queue
      t.integer :event_id

      t.timestamps
    end
  end
end
