class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :name
      t.datetime :schedule_start
      t.datetime :schedule_end
      t.string :all_day

      t.timestamps
    end
  end
end
