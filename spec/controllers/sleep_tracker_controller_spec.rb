require 'rails_helper'

class SleepRecorder; end

RSpec.describe SleepTrackerController do
  it 'renders the sleep-tracking page' do
    get :track
    expect(response).to render_template('sleep_tracker/track')
  end

  it 'creates a new sleep record' do
    expect(SleepRecorder).to receive(:start_sleep)
    post :sleep
  end
end
