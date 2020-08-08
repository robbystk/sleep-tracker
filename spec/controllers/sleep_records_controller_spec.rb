require 'rails_helper'

RSpec.describe SleepRecordsController, type: :controller do
  it 'displays an existing sleep record' do
    record = instance_double('SleepRecord')
    allow(SleepRecord).to receive(:find).and_return(record)
    get :show, params: {id: 10}
    expect(response).to render_template('sleep_records/show')
    expect(assigns(:sleep_record)).to eq record
  end
end
