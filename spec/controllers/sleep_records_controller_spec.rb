require 'rails_helper'

RSpec.describe SleepRecordsController, type: :controller do
  it 'displays an existing sleep record' do
    record = instance_double('SleepRecord')
    allow(SleepRecord).to receive(:find).and_return(record)
    get :show, params: {id: 10}
    expect(response).to render_template('sleep_records/show')
    expect(assigns(:sleep_record)).to eq record
  end

  it 'allows editing of an existing sleep record' do
    record = instance_double('SleepRecord')
    allow(SleepRecord).to receive(:find).and_return(record)
    get :edit, params: {id: 10}
    expect(response).to render_template('sleep_records/edit')
    expect(assigns(:sleep_record)).to eq record
  end

  it 'updates an existing sleep record' do
    record = instance_double('SleepRecord')

    new_sleep_time = (8.hours + 5.minutes).ago
    new_wake_time = 5.minutes.from_now

    expect(SleepRecord).to receive(:find).and_return(record)
    sleep_record_params = ActionController::Parameters.new({
      sleep_time: new_sleep_time.to_s,
      wake_time: new_wake_time.to_s
    }).permit!
    expect(record).to receive(:update_attributes!).with(sleep_record_params)

    put :update, params: {
      id: 10,
      sleep_record: {
        sleep_time: new_sleep_time.to_s,
        wake_time: new_wake_time.to_s
      }
    }

    expect(response).to redirect_to sleep_record_path(record)
  end
end
