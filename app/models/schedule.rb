class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :schedule_start, presence: true
  validates :schedule_end, presence: true
 
end
