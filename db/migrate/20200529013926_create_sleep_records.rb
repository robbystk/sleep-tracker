class CreateSleepRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :sleep_records do |t|
      t.datetime :sleep_time, null: false
      t.datetime :wake_time

      t.timestamps
    end
  end
end
