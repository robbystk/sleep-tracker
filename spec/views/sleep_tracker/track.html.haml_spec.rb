require 'rails_helper'

RSpec.describe "sleep_tracker/track", type: :view do
  it "includes the 'Go To Sleep' button" do
    render
    expect(rendered).to match('Go To Sleep')
  end

  it "changes the button to 'Wake Up' if a sleep record is given" do
    assign(:sleep_record, SleepRecord.new)
    render
    expect(rendered).to match('Wake Up')
  end
end
