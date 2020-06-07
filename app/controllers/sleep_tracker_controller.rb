require './lib/sleep_recorder'

class SleepTrackerController < ApplicationController
  def track
    @sleep_record = SleepRecorder.last_unfinished_record_for(@user)
  end

  def sleep
    SleepRecorder.start_sleep
    redirect_to sleep_tracker_track_path
  end

  private
  def sleep_tracker_track_path
    root_path
  end
end
