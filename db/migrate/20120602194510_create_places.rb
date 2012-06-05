class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :event_id
      t.string :title
      t.text :lineup

      t.timestamps
    end
  end
end
