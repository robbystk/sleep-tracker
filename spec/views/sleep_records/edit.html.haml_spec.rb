require 'rails_helper'

RSpec.describe "sleep_records/edit", type: :view do
  it 'has fields for editing a sleep record' do
    record = SleepRecord.create!(sleep_time: 8.hours.ago, wake_time: 0.seconds.ago)
    assign(:sleep_record, record)
    render
    expect(rendered).to match 'Edit Sleep Record'
    expect(rendered).to have_field('Sleep time')
    expect(rendered).to have_field('Wake time')
    expect(rendered).to have_button('Update Sleep record')
  end
end
