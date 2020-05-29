class SleepRecord < ApplicationRecord
  validates :sleep_time, presence: true
end
