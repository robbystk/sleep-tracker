require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  it 'serves the home page' do
    get root_path
    expect(response).to render_template(:home)
  end

  it 'serves the about page' do
    get about_path
    expect(response).to render_template(:about)
  end

  it 'serves the help page' do
    get help_path
    expect(response).to render_template(:help)
  end

  it 'serves the contact page' do
    get contact_path
    expect(response).to render_template(:contact)
  end
end
