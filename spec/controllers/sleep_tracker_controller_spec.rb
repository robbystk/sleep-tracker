require 'rails_helper'

RSpec.describe SleepTrackerController do
  it 'renders the sleep-tracking page' do
    get :track
    expect(response).to render_template('sleep_tracker/track')
  end
end
