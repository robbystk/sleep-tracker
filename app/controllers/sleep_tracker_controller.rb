require './lib/sleep_recorder'

class SleepTrackerController < ApplicationController
  def track
  end

  def sleep
    SleepRecorder.start_sleep
  end
end
