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
end
