class SleepRecorder
  def self.start_sleep
    SleepRecord.create!(sleep_time: DateTime.now)
  end
end
