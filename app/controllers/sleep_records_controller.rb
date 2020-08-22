class SleepRecordsController < ApplicationController
  def show
    @sleep_record = SleepRecord.find(params.fetch(:id))
  end

  def edit
    @sleep_record = SleepRecord.find(params.fetch(:id))
  end
end
