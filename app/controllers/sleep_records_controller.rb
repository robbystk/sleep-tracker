class SleepRecordsController < ApplicationController
  def show
    @sleep_record = SleepRecord.find(params.fetch(:id))
  end

  def edit
    @sleep_record = SleepRecord.find(params.fetch(:id))
  end

  def update
    @sleep_record = SleepRecord.find(params.fetch(:id))
    @sleep_record.update_attributes!(sleep_record_params)
    redirect_to sleep_record_path(@sleep_record)
  end

  private
    def sleep_record_params
      params.require(:sleep_record).permit(:sleep_time, :wake_time)
    end
end
