class SleepRecordsController < ApplicationController
  def show
    @sleep_record = SleepRecord.find(params.fetch(:id))
  end
end
