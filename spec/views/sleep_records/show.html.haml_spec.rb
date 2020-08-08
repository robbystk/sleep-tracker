require 'rails_helper'

RSpec.describe "sleep_records/show", type: :view do
  let(:sleep_record) do
    instance_double('SleepRecord',
                    sleep_time: 8.hours.ago,
                    wake_time: DateTime.now)
  end

  it 'displays the sleep record details' do
    assign(:sleep_record, sleep_record)
    render
    expect(rendered).to match(DateTime.now.to_s)
  end
end
