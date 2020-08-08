class SleepRecorder
  def self.start_sleep
    SleepRecord.create!(sleep_time: DateTime.now)
  end

  def self.stop_sleep_for(user=nil)
    record = last_unfinished_record_for(user)
    record.update(wake_time: DateTime.now)
    return record
  end

  def self.last_unfinished_record_for(user=nil)
    if user
      SleepRecord.last_unfinished_for(user_id: user.id)
    else
      SleepRecord.last_unfinished
    end
  end
end
