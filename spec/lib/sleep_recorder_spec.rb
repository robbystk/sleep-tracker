require './lib/sleep_recorder'

class SleepRecord; end

RSpec.describe SleepRecorder do
  it 'starts recording sleep' do
    expect(SleepRecord).to receive(:create!).with(sleep_time: DateTime.now)
    described_class.start_sleep
  end

  it 'retrieves last unfinished sleep record' do
    user = instance_double("User", id: 10)
    expect(SleepRecord).to receive(:last_unfinished_for).with(user_id: 10)
    described_class.last_unfinished_record_for(user)
  end
end
