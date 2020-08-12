

RSpec.describe SleepRecordsHelper, type: :helper do
  describe '#duration_between' do
    it 'computes a duration between two time-like objects' do
      start = 8.hours.ago
      stop = Time.zone.now.advance(minutes: 17)
      result = duration_between(start, stop)
      expect(result.to_s).to eq '8:17'
    end
  end
end
