require 'rails_helper'

RSpec.describe SleepTrackerController do
  let(:sleep_record) { instance_double(SleepRecord, id: 10) }

  it 'renders the sleep-tracking page' do
    get :track
    expect(response).to render_template('sleep_tracker/track')
  end

  it 'creates a new sleep record' do
    expect(SleepRecorder).to receive(:start_sleep).and_return(sleep_record)
    post :sleep
    expect(response).to have_http_status(:found)
  end

  it 'stops an existing sleep record' do
    expect(SleepRecorder).to receive(:stop_sleep_for).and_return(sleep_record)
    post :wake
    expect(response).to redirect_to(edit_sleep_record_path(sleep_record))
  end
end
