class SleepRecord < ApplicationRecord
  validates :sleep_time, presence: true

  def self.last_unfinished
    self.where(wake_time: nil).last
  end

  def self.last_unfinished_for(user_id:)
    raise NotImplementedError
  end
end
