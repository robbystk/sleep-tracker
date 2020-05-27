require './lib/sleep_recorder'

class SleepRecord; end

RSpec.describe SleepRecorder do
  it 'starts recording sleep' do
    expect(SleepRecord).to receive(:new)
    described_class.start_sleep
  end
end
