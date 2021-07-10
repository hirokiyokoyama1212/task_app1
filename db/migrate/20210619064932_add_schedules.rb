class AddSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :title, :string
  end
end
