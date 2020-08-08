require './lib/sleep_recorder'

class SleepTrackerController < ApplicationController
  def track
    @sleep_record = SleepRecorder.last_unfinished_record_for(@user)
  end

  def sleep
    SleepRecorder.start_sleep
    redirect_to sleep_tracker_track_path
  end

  def wake
    @sleep_record = SleepRecorder.stop_sleep_for
    redirect_to sleep_record_path(@sleep_record.id)
  end

  private
  def sleep_tracker_track_path
    root_path
  end
end
