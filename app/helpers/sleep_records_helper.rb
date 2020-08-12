module SleepRecordsHelper
  class MyDuration < ActiveSupport::Duration
    def hours
      parts[:hours]
    end

    def minutes
      parts[:minutes]
    end

    def to_s
      "%d:%02d" % [hours, minutes]
    end
  end

  def duration_between(start, stop)
    start = start.in_time_zone
    stop = stop.in_time_zone
    seconds = (stop - start).to_i
    MyDuration.build(seconds)
  end
end
