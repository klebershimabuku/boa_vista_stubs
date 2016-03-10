require 'rails_helper'

RSpec.describe BoaVistaStubs::RequestsController, type: :controller do
  routes { BoaVistaStubs::Engine.routes }

  describe 'GET :index' do
    it 'renders the response text' do
      get :index, { consulta: 'hello world' }
      expect(response.body).to eq('hello world')
    end
  end
end
