require 'rails_helper'

RSpec.describe "sleep_tracker/track", type: :view do
  it 'includes the go to sleep button' do
    render
    expect(rendered).to match('Go To Sleep')
  end
end
