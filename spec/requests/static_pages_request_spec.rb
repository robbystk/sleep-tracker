require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  it 'serves the home page' do
    get root_path
    expect(response).to render_template(:home)
  end
end
