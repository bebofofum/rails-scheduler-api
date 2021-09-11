class CreateStreams < ActiveRecord::Migration[6.0]
  def change
    create_table :streams do |t|
      t.string :name
      t.text :description
      t.string :schedule
      t.datetime :schedule_dates
      t.datetime :schedule_time
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
