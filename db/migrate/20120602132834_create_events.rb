class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.string :url
      t.string :flyer

      t.timestamps
    end
  end
end
