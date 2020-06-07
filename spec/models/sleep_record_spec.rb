require 'rails_helper'

RSpec.describe SleepRecord, type: :model do
  it "doesn't allow sleep time to be null" do
    record = described_class.new
    expect(record).to_not be_valid
  end

  it "doesn't allow saving of records without a sleep time" do
    record = described_class.new
    expect(record.save).to be false
    expect(record.errors.messages).to include(sleep_time: ["can't be blank"])
  end

  it "retrieves the last incomplete record" do
    complete = described_class.create!(
      sleep_time: 10.hours.ago,
      wake_time: 2.hours.ago
    )
    incomplete = described_class.create!(
      sleep_time: 4.hours.ago
    )

    expect(described_class.last_unfinished).to eq incomplete
  end
end
