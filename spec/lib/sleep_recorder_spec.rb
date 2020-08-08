require './lib/sleep_recorder'

RSpec.describe SleepRecorder do
  subject(:sleep_recorder) { described_class }

  it 'starts recording sleep' do
    expect(SleepRecord).to receive(:create!).with(sleep_time: DateTime.now)
    sleep_recorder.start_sleep
  end

  it 'finishes recording sleep' do
    record = instance_double('SleepRecord')
    sleep_record = class_double('SleepRecord')
    expect(record).to receive(:update).with(wake_time: DateTime.now)
      .and_return(record)
    # yikes
    allow(subject).to receive(:last_unfinished_record_for).and_return(record)
    result = sleep_recorder.stop_sleep_for
  end

  it 'retrieves last unfinished sleep record' do
    user = double("User", id: 10)
    record = instance_double('SleepRecord')
    allow(record).to receive(:update).and_return(record)
    expect(SleepRecord).to receive(:last_unfinished_for).with(user_id: 10).and_return(record)
    sleep_recorder.last_unfinished_record_for(user)
  end
end
