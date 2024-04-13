require 'rails_helper'

RSpec.describe "Students", type: :request do
  describe 'GET #index' do 
    it 'http 200 status' do 
      get :index 
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do 
      get :index 
      expect(response).to render_template('index')
    end
  end
end
